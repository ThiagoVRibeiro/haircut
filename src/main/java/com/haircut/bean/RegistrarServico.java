package com.haircut.bean;

import java.util.Objects;

public class RegistrarServico {

	public Integer id;
	public Cliente cliente;
	public Funcionario cabeleireiro;
	public Servico servico;
	public FormaPagamento formaPagamento;
	public String observacao;
	
	public RegistrarServico() {
		super();
	}

	public RegistrarServico(Integer id, Cliente cliente, Funcionario cabeleireiro, Servico servico,
			FormaPagamento formaPagamento, String observacao) {
		super();
		this.id = id;
		this.cliente = cliente;
		this.cabeleireiro = cabeleireiro;
		this.servico = servico;
		this.formaPagamento = formaPagamento;
		this.observacao = observacao;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Funcionario getCabeleireiro() {
		return cabeleireiro;
	}

	public void setCabeleireiro(Funcionario cabeleireiro) {
		this.cabeleireiro = cabeleireiro;
	}

	public Servico getServico() {
		return servico;
	}

	public void setServico(Servico servico) {
		this.servico = servico;
	}

	public FormaPagamento getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(FormaPagamento formaPagamento) {
		this.formaPagamento = formaPagamento;
	}
	
	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RegistrarServico other = (RegistrarServico) obj;
		return Objects.equals(id, other.id);
	}	
	
}
