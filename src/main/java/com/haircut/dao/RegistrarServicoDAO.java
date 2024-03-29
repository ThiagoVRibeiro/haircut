package com.haircut.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.haircut.bean.Cliente;
import com.haircut.bean.FormaPagamento;
import com.haircut.bean.RegistrarServico;

public class RegistrarServicoDAO {

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
	
	public static int salvarRegistrarServico(String[] c) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			System.out.println("Cliente " + c[0] + " Funcionario " + c[1] + " Servico Realizado " + c[2] + " FormaPAgamento" + c[3] + " Observação: " + c[4]);
			int clInt = Integer.parseInt(c[0]);
			int fInt = Integer.parseInt(c[1]);
			int srInt = Integer.parseInt(c[2]);
			int fmInt = Integer.parseInt(c[3]);
			PreparedStatement ps = con.prepareStatement("INSERT INTO servicorealizado(id_cliente, id_funcionario, id_servico, id_formapagamento, observacao) VALUES (?, ?, ?, ?, ?)");
			ps.setInt(1, clInt);
			ps.setInt(2, fInt);
			ps.setInt(3, srInt);
			ps.setInt(4, fmInt);
			ps.setString(5, c[4]);
			
			status = ps.executeUpdate();

			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	/*
	public static List<RegistrarServico> getAllRegistrarServicos(){
		List<RegistrarServico> list = new ArrayList<RegistrarServico>();
		
		try {
			Connection con = getConnection();
			//select nome from clientes inner join servicorealizado servicorealizado on clientes.id = servicorealizado.id_cliente where clientes.id = 1;
			PreparedStatement ps = con.prepareStatement("SELECT * FROM servicorealizado");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				RegistrarServico registrarservico = new RegistrarServico();
				registrarservico.setId(rs.getInt("id"));
				registrarservico.set(rs.getString("id_cliente"));
				list.add(registrarservico);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int deletarRegistrarServico(RegistrarServico f) {
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
	
	public static int updateRegistrarServico(RegistrarServico f) {
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

	public static RegistrarServico getRegistroRegistrarServicoById(int id) {
		RegistrarServico formaPagamento = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM formapagamento WHERE id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				formaPagamento = new RegistrarServico();
				formaPagamento.setId(rs.getInt("id"));
				formaPagamento.setNome(rs.getString("nome"));
				System.out.println(formaPagamento.getNome());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return formaPagamento;
	}*/
	
}
