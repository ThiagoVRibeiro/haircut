package com.haircut.bean;

public class Funcionario extends Pessoa{

	private String email;
	private String endereco;
	private String funcao;
	
	public Funcionario() {
		super();
	}

	public Funcionario(Integer id, String nome, String telefone, String email, String endereco, String funcao) {
		super(id, nome, telefone);
		this.email = email;
		this.endereco = endereco;
		this.funcao = funcao;
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
	
	public String getFuncao() {
		return funcao;
	}

	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}
	
}
