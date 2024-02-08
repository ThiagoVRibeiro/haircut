package com.haircut.bean;

public class Funcionario extends Pessoa{

	public String email;
	public String endereco;
	public String funcao;
	
	

	public Funcionario(Integer id, String nome, String telefone, String email, String endereco, String funcao) {
		super(id, nome, telefone);
		this.email = email;
		this.endereco = endereco;
		this.funcao = funcao;
	}
	
	public Funcionario() {
		super();
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
