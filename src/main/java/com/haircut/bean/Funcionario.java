package com.haircut.bean;

public class Funcionario extends Pessoa{

	private String email;
	private String endereco;
	
	public Funcionario() {
		super();
	}

	public Funcionario(Integer id, String nome, String telefone, String email, String endereco) {
		super(id, nome, telefone);
		this.email = email;
		this.endereco = endereco;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	
	
}
