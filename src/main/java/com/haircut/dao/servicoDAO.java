package com.haircut.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.haircut.bean.Servico;

public class servicoDAO {

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
	
	public static int salvarServico(Servico s) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO servicos(nomeservico, descricaoservico, valorservico) VALUES (?,?,?)");
			ps.setString(1, s.getNomeServico());
			ps.setString(2, s.getDescricaoServico());
			ps.setInt(3, s.getValorServico());
			status = ps.executeUpdate();
			
			System.out.println("Máquina serviço");
			System.out.println(s.getNomeServico());
			System.out.println(s.getDescricaoServico());
			System.out.println(s.getValorServico());
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static List<Servico> getAllServicos(){
		List<Servico> list = new ArrayList<Servico>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM servicos");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Servico servico = new Servico();
				servico.setId(rs.getInt("id"));
				servico.setNomeServico(rs.getString("nomeservico"));
				servico.setDescricaoServico(rs.getString("descricaoservico"));
				servico.setValorServico(rs.getInt("valorservico"));
				list.add(servico);
				//System.out.println(servico);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int deletarServico(Servico s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM servicos WHERE id=?");
			ps.setInt(1, s.getId());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int updateServico(Servico s) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("UPDATE servicos SET nomeservico=?,"
					+ "descricaoservico=?, valorservico=? WHERE id=?");
			
			ps.setString(1, s.getNomeServico());
			ps.setString(2, s.getDescricaoServico());
			ps.setInt(3, s.getValorServico());
			ps.setInt(4, s.getId());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}		
		return status;
	}

	public static Servico getRegistroServicoById(int id) {
		Servico servico = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM servicos WHERE id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				servico = new Servico();
				servico.setId(rs.getInt("id"));
				servico.setNomeServico(rs.getString("nomeservico"));
				servico.setDescricaoServico(rs.getString("descricaoservico"));
				servico.setValorServico(rs.getInt("valorservico"));
				System.out.println(servico.getNomeServico());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return servico;
		
	}
	
}
