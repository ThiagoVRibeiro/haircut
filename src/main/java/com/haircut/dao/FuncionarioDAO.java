package com.haircut.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.haircut.bean.Funcionario;

public class FuncionarioDAO {

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
	
	public static int salvarFuncionario(Funcionario s) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO funcionario(nome, funcao, email, endereco, telefone) VALUES (?,?,?,?,?)");
			ps.setString(1, s.getNome());
			ps.setString(2, s.getFuncao());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getEndereco());
			ps.setString(5, s.getTelefone());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static List<Funcionario> getAllFuncionarios(){
		List<Funcionario> list = new ArrayList<Funcionario>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM funcionario");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Funcionario funcionario = new Funcionario();
				funcionario.setId(rs.getInt("id"));
				funcionario.setNome(rs.getString("nome"));
				funcionario.setFuncao(rs.getString("funcao"));
				funcionario.setEmail(rs.getString("email"));
				funcionario.setEndereco(rs.getString("endereco"));
				funcionario.setTelefone(rs.getString("telefone"));
				list.add(funcionario);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println(list);	
		return list;
	}
	
	public static int deletarFuncionario(Funcionario s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM funcionario WHERE id=?");
			ps.setInt(1, s.getId());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int updateFuncionario(Funcionario s) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("UPDATE funcionario SET nome=?,"
					+ "funcao=?, email=?, endereco=? WHERE id=?");
			
			ps.setString(1, s.getNome());
			ps.setString(2, s.getFuncao());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getEndereco());
			ps.setString(5, s.getTelefone());
			ps.setInt(5, s.getId());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}		
		return status;
	}

	public static Funcionario getRegistroFuncionarioById(int id) {
		Funcionario funcionario = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM funcionario WHERE id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				funcionario = new Funcionario();
				funcionario.setId(rs.getInt("id"));
				funcionario.setNome(rs.getString("nome"));
				funcionario.setFuncao(rs.getString("funcao"));
				funcionario.setEmail(rs.getString("email"));
				funcionario.setEndereco(rs.getString("endereco"));
				funcionario.setTelefone(rs.getString("telefone"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return funcionario;
	}
	
}
