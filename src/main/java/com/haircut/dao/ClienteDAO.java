package com.haircut.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.haircut.bean.Cliente;

public class ClienteDAO {

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
	
	public static int salvarCliente(Cliente s) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO clientes(nome, telefone) VALUES (?,?)");
			ps.setString(1, s.getNome());
			ps.setString(2, s.getTelefone());
			status = ps.executeUpdate();
			
			System.out.println("Máquina serviço");
			System.out.println(s.getNome());
			System.out.println(s.getTelefone());
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static List<Cliente> getAllClientes(){
		List<Cliente> list = new ArrayList<Cliente>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM clientes");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Cliente cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setTelefone(rs.getString("telefone"));
				list.add(cliente);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int deletarCliente(Cliente s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM clientes WHERE id=?");
			ps.setInt(1, s.getId());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int updateCliente(Cliente s) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("UPDATE clientes SET nome=?,"
					+ "telefone=? WHERE id=?");
			
			ps.setString(1, s.getNome());
			ps.setString(2, s.getTelefone());
			ps.setInt(3, s.getId());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}		
		return status;
	}

	public static Cliente getRegistroClienteById(int id) {
		Cliente cliente = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM clientes WHERE id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setTelefone(rs.getString("telefone"));
				System.out.println(cliente.getNome());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cliente;
	}
	
}
