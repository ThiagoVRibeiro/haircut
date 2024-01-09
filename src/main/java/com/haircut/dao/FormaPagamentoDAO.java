package com.haircut.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.haircut.bean.FormaPagamento;

public class FormaPagamentoDAO {

	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/haircut", "postgres", "postgres");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static int salvarFormaPagamento(FormaPagamento f) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO formapagamento(nome) VALUES (?)");
			ps.setString(1, f.getNome());
			status = ps.executeUpdate();
			
			System.out.println("Máquina serviço");
			System.out.println(f.getNome());
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static List<FormaPagamento> getAllFormaPagamentos(){
		List<FormaPagamento> list = new ArrayList<FormaPagamento>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM formapagamento");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				FormaPagamento formapagamento = new FormaPagamento();
				formapagamento.setId(rs.getInt("id"));
				formapagamento.setNome(rs.getString("nome"));
				list.add(formapagamento);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int deletarFormaPagamento(FormaPagamento f) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM formapagamento WHERE id=?");
			ps.setInt(1, f.getId());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int updateFormaPagamento(FormaPagamento f) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("UPDATE formapagamento SET nome=? WHERE id=?");
			
			ps.setString(1, f.getNome());
			ps.setInt(2, f.getId());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}		
		return status;
	}

	public static FormaPagamento getRegistroFormaPagamentoById(int id) {
		FormaPagamento formaPagamento = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM formapagamento WHERE id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				formaPagamento = new FormaPagamento();
				formaPagamento.setId(rs.getInt("id"));
				formaPagamento.setNome(rs.getString("nome"));
				System.out.println(formaPagamento.getNome());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return formaPagamento;
	}
	
}
