object DM: TDM
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 766
  Width = 1014
  object Conex: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = '192.168.0.110'
    Port = 0
    Database = 'Brubalar'
    User = 'thr'
    Password = 'ThR060607'
    Protocol = 'mssql'
    Left = 8
    Top = 7
  end
  object dUSer: TDataSource
    DataSet = qUser
    Left = 47
    Top = 188
  end
  object qUser: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select usuario.* , permissao.*, menu.tipo tipo_M, menu.*, '
      'tpuser.idemp,  empresa.fantasia'
      'from usuario'
      'Left join permissao on permissao.IdUsuario = usuario.tipo'
      'left join menu on menu.Id = permissao.IdMenu'
      'left join tpuser on tpuser.id = usuario.tipo'
      'left join empresa on empresa.id = tpuser.idemp'
      'where '
      '   usuario.[user] = :User and '
      '   usuario.senha = :Senha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'User'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Senha'
        ParamType = ptUnknown
      end>
    Left = 16
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'User'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Senha'
        ParamType = ptUnknown
      end>
    object qUserId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qUserNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qUserSenha: TWideStringField
      FieldName = 'Senha'
      Size = 15
    end
    object qUserUser: TWideStringField
      FieldName = 'User'
      Size = 15
    end
    object qUserTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object qUserAfastamento: TDateTimeField
      FieldName = 'Afastamento'
    end
    object qUserCPF: TWideStringField
      FieldName = 'CPF'
      Size = 11
    end
    object qUserRG: TWideStringField
      FieldName = 'RG'
      Size = 12
    end
    object qUserNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qUserEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object qUserNumero: TWideStringField
      FieldName = 'Numero'
      Size = 10
    end
    object qUserBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qUserCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qUserUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qUsertelefone: TWideStringField
      FieldName = 'telefone'
      Size = 12
    end
    object qUsercelular: TWideStringField
      FieldName = 'celular'
      Size = 12
    end
    object qUserfax: TWideStringField
      FieldName = 'fax'
      Size = 12
    end
    object qUseremail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object qUserIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qUserIdMenu: TIntegerField
      FieldName = 'IdMenu'
    end
    object qUserPermitido: TWideStringField
      FieldName = 'Permitido'
      Size = 1
    end
    object qUseratalho: TWideStringField
      FieldName = 'atalho'
      Size = 100
    end
    object qUsertipo_M: TWideStringField
      FieldName = 'tipo_M'
      Size = 1
    end
    object qUserDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qUserNome_1: TWideStringField
      FieldName = 'Nome_1'
      Size = 50
    end
    object qUsertipo_1: TWideStringField
      FieldName = 'tipo_1'
      Size = 1
    end
    object qUserData: TDateTimeField
      FieldName = 'Data'
    end
    object qUservenc_ferias: TDateTimeField
      FieldName = 'venc_ferias'
    end
    object qUservenc_exame: TDateTimeField
      FieldName = 'venc_exame'
    end
    object qUserfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qUserloginEspecial: TWideStringField
      FieldName = 'loginEspecial'
      Required = True
      Size = 1
    end
    object qUseridemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qUserCep: TWideStringField
      FieldName = 'Cep'
      Size = 8
    end
  end
  object dParametro: TDataSource
    DataSet = qParametro
    Left = 57
    Top = 294
  end
  object qParametro: TZTable
    Connection = Conex
    TableName = 'parametro'
    Left = 17
    Top = 294
    object qParametroid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qParametroRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Size = 60
    end
    object qParametroCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object qParametroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qParametroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qParametroCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 25
    end
    object qParametroUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qParametroCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qParametroSITE: TWideStringField
      FieldName = 'SITE'
      Size = 50
    end
    object qParametroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qParametroRESPONS: TWideStringField
      FieldName = 'RESPONS'
      Size = 40
    end
    object qParametroTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      EditMask = '(99) 9999-9999'
      Size = 30
    end
    object qParametroFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qParametrologo: TWideStringField
      FieldName = 'logo'
      Size = 150
    end
    object qParametroex: TWideStringField
      FieldName = 'ex'
      Size = 1
    end
    object qParametrofantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qParametronum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object qParametroidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object qParametroMenuAtualizado: TDateTimeField
      FieldName = 'MenuAtualizado'
    end
    object qParametroIE: TWideStringField
      FieldName = 'IE'
    end
    object qParametroseq_reneg: TIntegerField
      FieldName = 'seq_reneg'
      Required = True
    end
    object qParametroOBSNF: TWideMemoField
      FieldName = 'OBSNF'
      BlobType = ftWideMemo
    end
    object qParametroESPECIE: TWideStringField
      FieldName = 'ESPECIE'
    end
    object qParametroMARCA: TWideStringField
      FieldName = 'MARCA'
    end
    object qParametroSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qParametroTPEMPRESANFE: TIntegerField
      FieldName = 'TPEMPRESANFE'
    end
    object qParametroNFE_DUPLICATA: TWideStringField
      FieldName = 'NFE_DUPLICATA'
      Required = True
      Size = 1
    end
    object qParametroNFE: TWideStringField
      FieldName = 'NFE'
      Required = True
      Size = 1
    end
    object qParametroCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qParametroCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object qParametroCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 3
    end
    object qParametroNFE_RAVE: TWideStringField
      FieldName = 'NFE_RAVE'
      Size = 255
    end
    object qParametroNFE_NUMSERIE: TWideStringField
      FieldName = 'NFE_NUMSERIE'
      Size = 100
    end
    object qParametroNFE_EMAIL: TWideStringField
      FieldName = 'NFE_EMAIL'
      Size = 100
    end
    object qParametroNFE_SENHA: TWideStringField
      FieldName = 'NFE_SENHA'
      Size = 50
    end
    object qParametroNFE_ASSUNTO: TWideStringField
      FieldName = 'NFE_ASSUNTO'
      Size = 100
    end
    object qParametroNFE_CORPOMSG: TWideMemoField
      FieldName = 'NFE_CORPOMSG'
      BlobType = ftWideMemo
    end
    object qParametroNFE_DANFE: TWideStringField
      FieldName = 'NFE_DANFE'
      Size = 255
    end
    object qParametroNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 255
    end
    object qParametroNFE_CANCELADA: TWideMemoField
      FieldName = 'NFE_CANCELADA'
      BlobType = ftWideMemo
    end
    object qParametroNFE_COPIAEMAIL: TWideStringField
      FieldName = 'NFE_COPIAEMAIL'
      Size = 100
    end
    object qParametroTIPO_EMPRESA: TWideStringField
      FieldName = 'TIPO_EMPRESA'
      Required = True
      Size = 1
    end
    object qParametroTIPOIMP_NFE: TWideStringField
      FieldName = 'TIPOIMP_NFE'
      Required = True
      Size = 1
    end
    object qParametroSIMPLESN_FAIXA: TIntegerField
      FieldName = 'SIMPLESN_FAIXA'
    end
    object qParametroSIMPLESN_TIPO: TWideStringField
      FieldName = 'SIMPLESN_TIPO'
      Size = 1
    end
    object qParametroDEST_IMPOSTOS: TWideStringField
      FieldName = 'DEST_IMPOSTOS'
      Required = True
      Size = 1
    end
    object qParametroMOSTRA_FONTEIBPT: TWideStringField
      FieldName = 'MOSTRA_FONTEIBPT'
      Required = True
      Size = 1
    end
    object qParametroSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 150
    end
    object qParametroPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qParametroEMAIL_SSL: TWideStringField
      FieldName = 'EMAIL_SSL'
      Required = True
      Size = 1
    end
    object qParametroEMAIL_TLS: TWideStringField
      FieldName = 'EMAIL_TLS'
      Size = 1
    end
    object qParametroNT003: TWideStringField
      FieldName = 'NT003'
      Size = 1
    end
    object qParametroNTCEST: TWideStringField
      FieldName = 'NTCEST'
      Size = 1
    end
    object qParametroPICMSINTERDEST: TFloatField
      FieldName = 'PICMSINTERDEST'
    end
    object qParametroCSC: TWideStringField
      FieldName = 'CSC'
      Size = 255
    end
    object qParametroIDCSC: TWideStringField
      FieldName = 'IDCSC'
      Size = 255
    end
    object qParametroMOSTRA_ST: TWideStringField
      FieldName = 'MOSTRA_ST'
      Required = True
      Size = 1
    end
    object qParametroPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object qParametroTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object qParametrotipoambiente: TWideStringField
      FieldName = 'tipoambiente'
      Required = True
      Size = 1
    end
    object qParametroiduf: TIntegerField
      FieldName = 'iduf'
    end
    object qParametroNF_IMPOSTOPORNCM: TWideStringField
      FieldName = 'NF_IMPOSTOPORNCM'
      ReadOnly = True
      Size = 1
    end
    object qParametroemail_contador: TWideStringField
      FieldName = 'email_contador'
      Size = 150
    end
    object qParametroprod_sem_montagem: TWideStringField
      FieldName = 'prod_sem_montagem'
      Required = True
      Size = 1
    end
    object qParametroimpPedido_2vias: TWideStringField
      FieldName = 'impPedido_2vias'
      Required = True
      Size = 1
    end
    object qParametrovenda_escolherpreco: TWideStringField
      FieldName = 'venda_escolherpreco'
      Size = 1
    end
    object qParametronf_cfopprod_puxar_NF: TWideStringField
      FieldName = 'nf_cfopprod_puxar_NF'
      ReadOnly = True
      Size = 1
    end
    object qParametronf_msgAproveitCredito: TWideStringField
      FieldName = 'nf_msgAproveitCredito'
      Size = 1
    end
    object qParametroreduzir_romaneio: TWideStringField
      FieldName = 'reduzir_romaneio'
      Required = True
      Size = 1
    end
    object qParametrocomi_vend: TWideStringField
      FieldName = 'comi_vend'
      Required = True
      Size = 1
    end
    object qParametrobaixa_sem_troco: TWideStringField
      FieldName = 'baixa_sem_troco'
      Required = True
      Size = 1
    end
    object qParametrovenda_sem_vecto: TWideStringField
      FieldName = 'venda_sem_vecto'
      Required = True
      Size = 1
    end
    object qParametrotpAmbiente: TWideStringField
      FieldName = 'tpAmbiente'
      Required = True
      Size = 1
    end
    object qParametrovenda_foco_inicial: TIntegerField
      FieldName = 'venda_foco_inicial'
      Required = True
    end
    object qParametrocaminho_pasta_serasa: TWideStringField
      FieldName = 'caminho_pasta_serasa'
      Size = 100
    end
    object qParametropesqproduto: TWideStringField
      FieldName = 'pesqproduto'
      Required = True
    end
    object qParametromaxDesconto: TFloatField
      FieldName = 'maxDesconto'
    end
    object qParametromostrar_royalties: TWideStringField
      FieldName = 'mostrar_royalties'
      Required = True
      Size = 1
    end
    object qParametrodesconto_especial: TWideStringField
      FieldName = 'desconto_especial'
      Required = True
      Size = 1
    end
    object qParametromostrar_por_comissao: TWideStringField
      FieldName = 'mostrar_por_comissao'
      ReadOnly = True
      Size = 1
    end
    object qParametromostrar_cubagem: TWideStringField
      FieldName = 'mostrar_cubagem'
      ReadOnly = True
      Size = 1
    end
    object qParametrocomissao_pagar: TWideStringField
      FieldName = 'comissao_pagar'
      Required = True
      Size = 1
    end
    object qParametrousa_cond_porcentagem: TWideStringField
      FieldName = 'usa_cond_porcentagem'
      Required = True
      Size = 1
    end
    object qParametroPorCustoOpera: TFloatField
      FieldName = 'PorCustoOpera'
    end
    object qParametroidweb: TIntegerField
      FieldName = 'idweb'
      Required = True
    end
    object qParametroclientes_repre: TWideStringField
      FieldName = 'clientes_repre'
      Required = True
      Size = 1
    end
    object qParametromod_pedidosWeb: TWideStringField
      FieldName = 'mod_pedidosWeb'
      Required = True
      Size = 1
    end
    object qParametrofator_cubagem: TFloatField
      FieldName = 'fator_cubagem'
      Required = True
    end
    object qParametrotp_desc_ped: TWideStringField
      FieldName = 'tp_desc_ped'
      Required = True
      Size = 1
    end
    object qParametromod_cad_tabela: TWideStringField
      FieldName = 'mod_cad_tabela'
      Required = True
      Size = 1
    end
    object qParametrotempo_pedido: TIntegerField
      FieldName = 'tempo_pedido'
      Required = True
    end
    object qParametrogerar_contas_sep: TWideStringField
      FieldName = 'gerar_contas_sep'
      Size = 1
    end
    object qParametroconta_com_desc: TIntegerField
      FieldName = 'conta_com_desc'
    end
    object qParametroconta_sem_desc: TIntegerField
      FieldName = 'conta_sem_desc'
    end
    object qParametrologinEspecial: TWideStringField
      FieldName = 'loginEspecial'
      Required = True
      Size = 1
    end
    object qParametrovenda_desc_margem: TWideStringField
      FieldName = 'venda_desc_margem'
      Size = 1
    end
    object qParametroemail_rep_vencidas: TWideStringField
      FieldName = 'email_rep_vencidas'
      Size = 1
    end
    object qParametrodias_vencidas: TIntegerField
      FieldName = 'dias_vencidas'
      Required = True
    end
    object qParametrop_mod_boleto: TWideStringField
      FieldName = 'p_mod_boleto'
      Required = True
      Size = 1
    end
    object qParametrofinan_expedicao: TWideStringField
      FieldName = 'finan_expedicao'
      Required = True
      Size = 1
    end
    object qParametropd_vincular_nf: TWideStringField
      FieldName = 'pd_vincular_nf'
      Required = True
      Size = 1
    end
    object qParametropd_cred_nf_avulsa: TWideStringField
      FieldName = 'pd_cred_nf_avulsa'
      Required = True
      Size = 1
    end
    object qParametronovafolhasep: TWideStringField
      FieldName = 'novafolhasep'
      Required = True
      Size = 1
    end
    object qParametroimp_minuta: TWideStringField
      FieldName = 'imp_minuta'
      Required = True
      Size = 1
    end
    object qParametropd_duas_cond: TWideStringField
      FieldName = 'pd_duas_cond'
      Required = True
      Size = 1
    end
    object qParametropd_imp_matricial: TWideStringField
      FieldName = 'pd_imp_matricial'
      Required = True
      Size = 1
    end
    object qParametromargem_minima: TFloatField
      FieldName = 'margem_minima'
      Required = True
    end
    object qParametrobloq_unit_venda: TWideStringField
      FieldName = 'bloq_unit_venda'
      Required = True
      Size = 1
    end
    object qParametrobloq_alterar_venda: TWideStringField
      FieldName = 'bloq_alterar_venda'
      Required = True
      Size = 1
    end
    object qParametronf_qtd_cx_separado: TWideStringField
      FieldName = 'nf_qtd_cx_separado'
      Required = True
      Size = 1
    end
    object qParametrofolha_separacao_mod_3: TWideStringField
      FieldName = 'folha_separacao_mod_3'
      Required = True
      Size = 1
    end
    object qParametrocli_atraso_dias: TIntegerField
      FieldName = 'cli_atraso_dias'
      Required = True
    end
    object qParametrocli_atraso: TWideStringField
      FieldName = 'cli_atraso'
      Required = True
    end
    object qParametropd_perm_alt_exp: TWideStringField
      FieldName = 'pd_perm_alt_exp'
      Required = True
      Size = 1
    end
    object qParametronao_usar_expedicao: TWideStringField
      FieldName = 'nao_usar_expedicao'
      Required = True
      Size = 1
    end
    object qParametrovias_subop_mesma_folha: TWideStringField
      FieldName = 'vias_subop_mesma_folha'
      Required = True
      Size = 1
    end
    object qParametromod_sped: TWideStringField
      FieldName = 'mod_sped'
      Required = True
      Size = 1
    end
    object qParametronao_baixar_negativo: TWideStringField
      FieldName = 'nao_baixar_negativo'
      Required = True
      Size = 1
    end
    object qParametromod_gerente_cial: TWideStringField
      FieldName = 'mod_gerente_cial'
      Required = True
      Size = 1
    end
    object qParametroperg_imp_separacao: TWideStringField
      FieldName = 'perg_imp_separacao'
      Required = True
      Size = 1
    end
    object qParametrominuta_des_mold_2: TWideStringField
      FieldName = 'minuta_des_mold_2'
      Required = True
      Size = 1
    end
    object qParametroetiqueta_nf_mod_2: TWideStringField
      FieldName = 'etiqueta_nf_mod_2'
      Required = True
      Size = 1
    end
    object qParametromsg_estoque_baixo: TWideStringField
      FieldName = 'msg_estoque_baixo'
      Required = True
      Size = 1
    end
    object qParametroperg_email_transp: TWideStringField
      FieldName = 'perg_email_transp'
      Required = True
      Size = 1
    end
    object qParametronf_sem_itens_zerados: TWideStringField
      FieldName = 'nf_sem_itens_zerados'
      Required = True
      Size = 1
    end
    object qParametrotraz_cond_em_branco: TWideStringField
      FieldName = 'traz_cond_em_branco'
      Required = True
      Size = 1
    end
    object qParametromostrar_multiplo: TWideStringField
      FieldName = 'mostrar_multiplo'
      Required = True
      Size = 1
    end
    object qParametrofolhaSepSemValor: TWideStringField
      FieldName = 'folhaSepSemValor'
      Required = True
      Size = 1
    end
    object qParametrocompra_etq_sele: TWideStringField
      FieldName = 'compra_etq_sele'
      Required = True
      Size = 1
    end
    object qParametroprod_com_romaneio: TWideStringField
      FieldName = 'prod_com_romaneio'
      Size = 1
    end
    object qParametroimpReciboFinan: TWideStringField
      FieldName = 'impReciboFinan'
      ReadOnly = True
      Size = 1
    end
    object qParametrovenda_alterarUnitGrid: TWideStringField
      FieldName = 'venda_alterarUnitGrid'
      Required = True
      Size = 1
    end
    object qParametrovenda_frete: TWideStringField
      FieldName = 'venda_frete'
      Required = True
      Size = 1
    end
    object qParametrovenda_justificar_cancel: TWideStringField
      FieldName = 'venda_justificar_cancel'
      Required = True
      Size = 1
    end
    object qParametromostrar_btn_entregar: TWideStringField
      FieldName = 'mostrar_btn_entregar'
      Required = True
      Size = 1
    end
    object qParametrofolhaSeparacao_mod_5: TWideStringField
      FieldName = 'folhaSeparacao_mod_5'
      ReadOnly = True
      Size = 1
    end
    object qParametroImpressaoVenda_mod_5: TWideStringField
      FieldName = 'ImpressaoVenda_mod_5'
      Required = True
      Size = 1
    end
    object qParametromod_mdfe: TWideStringField
      FieldName = 'mod_mdfe'
      Required = True
      Size = 1
    end
    object qParametromudar_cial_exp: TWideStringField
      FieldName = 'mudar_cial_exp'
      Required = True
      Size = 1
    end
    object qParametroprod_por_pedido: TWideStringField
      FieldName = 'prod_por_pedido'
      Size = 1
    end
    object qParametrousa_com_padrao: TWideStringField
      FieldName = 'usa_com_padrao'
      Size = 1
    end
    object qParametroimp_oc_mod_2: TWideStringField
      FieldName = 'imp_oc_mod_2'
      Required = True
      Size = 1
    end
    object qParametrogerar_cred_emp_origem: TWideStringField
      FieldName = 'gerar_cred_emp_origem'
      Required = True
      Size = 1
    end
    object qParametrovincula_usu_vend: TWideStringField
      FieldName = 'vincula_usu_vend'
      Required = True
      Size = 1
    end
    object qParametrousa_abertura_cx: TWideStringField
      FieldName = 'usa_abertura_cx'
      Size = 1
    end
    object qParametrosat: TWideStringField
      FieldName = 'sat'
      Size = 1
    end
    object qParametrobloquear_limite_exedido: TWideStringField
      FieldName = 'bloquear_limite_exedido'
      Required = True
      Size = 1
    end
    object qParametroconsidera_perm_alt_unit: TWideStringField
      FieldName = 'considera_perm_alt_unit'
      Required = True
      Size = 1
    end
    object qParametropedir_senha_desc_venda: TWideStringField
      FieldName = 'pedir_senha_desc_venda'
      Required = True
      Size = 1
    end
    object qParametrocli_cep_obrigatorio: TWideStringField
      FieldName = 'cli_cep_obrigatorio'
      Required = True
      Size = 1
    end
    object qParametrocli_cpf_obrigatorio: TWideStringField
      FieldName = 'cli_cpf_obrigatorio'
      Required = True
      Size = 1
    end
    object qParametrodias_calc_preco_compra: TIntegerField
      FieldName = 'dias_calc_preco_compra'
    end
    object qParametroproducao_fases: TWideStringField
      FieldName = 'producao_fases'
      Required = True
      Size = 1
    end
    object qParametrousa_cx_master: TWideStringField
      FieldName = 'usa_cx_master'
      Required = True
      Size = 1
    end
    object qParametrobloqueia_nf_lancada_fornecedor: TWideStringField
      FieldName = 'bloqueia_nf_lancada_fornecedor'
      Required = True
      Size = 1
    end
    object qParametrobloqueia_exped_cli_inadimp: TWideStringField
      FieldName = 'bloqueia_exped_cli_inadimp'
      Required = True
      Size = 1
    end
    object qParametrousa_referencia_base: TWideStringField
      FieldName = 'usa_referencia_base'
      Required = True
      Size = 1
    end
    object qParametrosicredi_n: TIntegerField
      FieldName = 'sicredi_n'
    end
    object qParametrosicredi_b: TIntegerField
      FieldName = 'sicredi_b'
    end
    object qParametrodias_carencia_bloqueio: TIntegerField
      FieldName = 'dias_carencia_bloqueio'
    end
    object qParametrobloqueia_exped_lim_exedido: TWideStringField
      FieldName = 'bloqueia_exped_lim_exedido'
      Required = True
      Size = 1
    end
    object qParametrofinanceiro_por_receb: TWideStringField
      FieldName = 'financeiro_por_receb'
      Required = True
      Size = 1
    end
    object qParametrousar_setor: TWideStringField
      FieldName = 'usar_setor'
      Required = True
      Size = 1
    end
    object qParametrorecibo_chq_detal: TWideStringField
      FieldName = 'recibo_chq_detal'
      Required = True
      Size = 1
    end
    object qParametrolimite_venda_liberar_com_senha: TWideStringField
      FieldName = 'limite_venda_liberar_com_senha'
      Size = 1
    end
    object qParametrocli_tabela_obrigatorio: TWideStringField
      FieldName = 'cli_tabela_obrigatorio'
      Size = 1
    end
    object qParametrocli_condicao_obrigatorio: TWideStringField
      FieldName = 'cli_condicao_obrigatorio'
      Size = 1
    end
    object qParametrocli_transp_obrigatorio: TWideStringField
      FieldName = 'cli_transp_obrigatorio'
      Size = 1
    end
    object qParametrocli_redespacho_obrigatorio: TWideStringField
      FieldName = 'cli_redespacho_obrigatorio'
      Size = 1
    end
    object qParametrocli_formapgto_obrigatorio: TWideStringField
      FieldName = 'cli_formapgto_obrigatorio'
      Size = 1
    end
    object qParametroid_mov_cx: TIntegerField
      FieldName = 'id_mov_cx'
    end
    object qParametromostra_orc_prog_prod: TWideStringField
      FieldName = 'mostra_orc_prog_prod'
      Required = True
      Size = 1
    end
    object qParametrorel_estoque_usar_fator_conv: TWideStringField
      FieldName = 'rel_estoque_usar_fator_conv'
      Size = 1
    end
    object qParametroimprimir_desc_ficha: TWideStringField
      FieldName = 'imprimir_desc_ficha'
      Required = True
      Size = 1
    end
    object qParametroloteLetra: TWideStringField
      FieldName = 'loteLetra'
      Size = 1
    end
    object qParametroL_Letra: TWideStringField
      FieldName = 'L_Letra'
      Size = 10
    end
    object qParametroL_Num: TIntegerField
      FieldName = 'L_Num'
    end
    object qParametroL_Posicao: TIntegerField
      FieldName = 'L_Posicao'
    end
    object qParametroL_LetraAnterior: TWideStringField
      FieldName = 'L_LetraAnterior'
      Size = 10
    end
    object qParametroL_posicaoLetra: TWideStringField
      FieldName = 'L_posicaoLetra'
      Size = 10
    end
    object qParametroenvio_nfe_acbr: TWideStringField
      FieldName = 'envio_nfe_acbr'
      Size = 1
    end
  end
  object qExec: TZQuery
    Connection = Conex
    Params = <>
    Left = 110
    Top = 75
  end
  object qPesq: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select usuario.* , permissao.*, menu.*, tpuser.max_desconto, tpu' +
        'ser.libera_credito'
      'from usuario'
      'Left join permissao on permissao.IdTpUsu = usuario.IdTpUser'
      'left join menu on menu.Id = permissao.IdMenu'
      'left join tpuser on tpuser.id = usuario.IdTpUser'
      
        'where usuario.user = :User and usuario.senha = :Senha  and ativo' +
        ' = '#39'S'#39)
    Params = <
      item
        DataType = ftString
        Name = 'User'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptInput
      end>
    Left = 16
    Top = 75
    ParamData = <
      item
        DataType = ftString
        Name = 'User'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptInput
      end>
  end
  object qSelect: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select usuario.* , permissao.*, menu.*'
      'from usuario'
      'Left join permissao on permissao.IdUsuario = usuario.Id'
      'left join menu on menu.Id = permissao.IdMenu'
      'where usuario.user = :User and usuario.senha = :Senha  ')
    Params = <
      item
        DataType = ftString
        Name = 'User'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptInput
      end>
    Left = 14
    Top = 129
    ParamData = <
      item
        DataType = ftString
        Name = 'User'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptInput
      end>
  end
  object qIns: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select usuario.* , permissao.*, menu.*, tpuser.max_desconto, tpu' +
        'ser.libera_credito'
      'from usuario'
      'Left join permissao on permissao.IdTpUsu = usuario.IdTpUser'
      'left join menu on menu.Id = permissao.IdMenu'
      'left join tpuser on tpuser.id = usuario.IdTpUser'
      
        'where usuario.user = :User and usuario.senha = :Senha  and ativo' +
        ' = '#39'S'#39)
    Params = <
      item
        DataType = ftString
        Name = 'User'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptInput
      end>
    Left = 144
    Top = 75
    ParamData = <
      item
        DataType = ftString
        Name = 'User'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptInput
      end>
  end
  object qCid: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select *'
      'from cidade'
      'where ((:UF = '#39'TT'#39') or (UF = :UF))'
      'order by Nome')
    Params = <
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end>
    Left = 16
    Top = 243
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end>
    object qCidid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qCidNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qCidUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dCid: TDataSource
    DataSet = qCid
    Left = 48
    Top = 245
  end
  object qAtuMenu: TZQuery
    Connection = Conex
    UpdateObject = qUpAtuMenu
    SQL.Strings = (
      'select menu.* from menu order by menu.id')
    Params = <>
    Left = 112
    Top = 451
    object qAtuMenuId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qAtuMenuDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qAtuMenuNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qAtuMenutipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object qUpAtuMenu: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM menu'
      'WHERE'
      '  ((menu.Id IS NULL AND :OLD_Id IS NULL) OR (menu.Id = :OLD_Id))')
    InsertSQL.Strings = (
      'INSERT INTO menu'
      '  (menu.Id, menu.Nome, menu.Descricao, menu.tipo)'
      'VALUES'
      '  (:Id, :Nome, :Descricao, :tipo)')
    ModifySQL.Strings = (
      'UPDATE menu SET'
      '  menu.Id = :Id,'
      '  menu.Nome = :Nome,'
      '  menu.Descricao = :Descricao,'
      '  menu.tipo = :tipo'
      'WHERE'
      '  ((menu.Id IS NULL AND :OLD_Id IS NULL) OR (menu.Id = :OLD_Id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object Permissao: TZQuery
    Connection = Conex
    UpdateObject = UpPermissao
    SQL.Strings = (
      'select permissao.*, menu.Nome'
      'from permissao '
      'left join menu on menu.id = permissao.IdMenu'
      'where permissao.Idusuario = :User '
      'Order By menu.Nome')
    Params = <
      item
        DataType = ftInteger
        Name = 'User'
        ParamType = ptInput
      end>
    Left = 104
    Top = 350
    ParamData = <
      item
        DataType = ftInteger
        Name = 'User'
        ParamType = ptInput
      end>
    object PermissaoId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object PermissaoIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object PermissaoIdMenu: TIntegerField
      FieldName = 'IdMenu'
    end
    object PermissaoPermitido: TWideStringField
      FieldName = 'Permitido'
      Size = 1
    end
    object Permissaoatalho: TWideStringField
      FieldName = 'atalho'
      Size = 100
    end
    object PermissaoNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object UpPermissao: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM permissao'
      'WHERE'
      
        '  ((permissao.Id IS NULL AND :OLD_Id IS NULL) OR (permissao.Id =' +
        ' '
      ':OLD_Id))')
    InsertSQL.Strings = (
      'INSERT INTO permissao'
      '  (permissao.Id, permissao.IdUsuario, permissao.IdMenu, '
      'permissao.Permitido, '
      '   permissao.atalho)'
      'VALUES'
      '  (:Id, :IdUsuario, :IdMenu, :Permitido, :atalho)')
    ModifySQL.Strings = (
      'UPDATE permissao SET'
      '  permissao.Id = :Id,'
      '  permissao.IdUsuario = :IdUsuario,'
      '  permissao.IdMenu = :IdMenu,'
      '  permissao.Permitido = :Permitido,'
      '  permissao.atalho = :atalho'
      'WHERE'
      
        '  ((permissao.Id IS NULL AND :OLD_Id IS NULL) OR (permissao.Id =' +
        ' '
      ':OLD_Id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 136
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdMenu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Permitido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'atalho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dPermissao: TDataSource
    DataSet = Permissao
    Left = 167
    Top = 350
  end
  object qMenu: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from menu order by id')
    Params = <>
    Left = 112
    Top = 399
    object qMenuId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qMenuDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qMenuNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qMenutipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object dMenu: TDataSource
    DataSet = qMenu
    Left = 143
    Top = 399
  end
  object qUn: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select p.ft_conv_un  from produto p'
      'where p.tipo = '#39'M'#39
      'and p.id = :IDm'
      'union'
      'select p.ft_conv_2un  from produto p'
      'where p.tipo = '#39'M'#39
      'and p.id = :IDm')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDm'
        ParamType = ptUnknown
      end>
    Left = 109
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDm'
        ParamType = ptUnknown
      end>
    object qUnft_conv_un: TWideStringField
      FieldName = 'ft_conv_un'
      Size = 10
    end
  end
  object dUn: TDataSource
    DataSet = qUn
    Left = 141
    Top = 184
  end
  object dPesq: TDataSource
    DataSet = qPesq
    Left = 50
    Top = 77
  end
  object qEstoque: TZQuery
    Connection = Conex
    UpdateObject = uEstoque
    OnNewRecord = qEstoqueNewRecord
    SQL.Strings = (
      'select * from Estoque'
      'where id = 0')
    Params = <>
    Left = 216
    Top = 91
    object qEstoqueId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qEstoqueData: TDateTimeField
      FieldName = 'Data'
    end
    object qEstoqueIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qEstoqueTpMov: TWideStringField
      FieldName = 'TpMov'
      Size = 1
    end
    object qEstoqueQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qEstoqueTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qEstoqueIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qEstoqueIdOp: TIntegerField
      FieldName = 'IdOp'
    end
    object qEstoqueIdSubOp: TIntegerField
      FieldName = 'IdSubOp'
    end
    object qEstoqueIdSubOp_P: TIntegerField
      FieldName = 'IdSubOp_P'
    end
    object qEstoqueIdOP_M: TFloatField
      FieldName = 'IdOP_M'
    end
    object qEstoqueidVenda: TIntegerField
      FieldName = 'idVenda'
    end
    object qEstoqueidcompra: TIntegerField
      FieldName = 'idcompra'
    end
    object qEstoqueidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qEstoqueidNF: TIntegerField
      FieldName = 'idNF'
    end
    object qEstoqueiddev: TIntegerField
      FieldName = 'iddev'
    end
    object qEstoquecupom: TIntegerField
      FieldName = 'cupom'
    end
    object qEstoqueop_manual: TWideStringField
      FieldName = 'op_manual'
      Required = True
      Size = 1
    end
    object qEstoqueloteCompra: TWideStringField
      FieldName = 'loteCompra'
      Size = 50
    end
  end
  object uEstoque: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Estoque'
      'WHERE'
      
        '  ((Estoque.Id IS NULL AND :OLD_Id IS NULL) OR (Estoque.Id = :OL' +
        'D_Id))')
    InsertSQL.Strings = (
      'INSERT INTO Estoque'
      
        '  (Data, IdProduto, TpMov, Quantidade, Tipo, IdUsuario, IdOp, Id' +
        'SubOp, '
      
        '   IdSubOp_P, IdOP_M, idVenda, idcompra, idemp, idNF, iddev, cup' +
        'om, '
      '   op_manual, loteCompra)'
      'VALUES'
      
        '  (:Data, :IdProduto, :TpMov, :Quantidade, :Tipo, :IdUsuario, :I' +
        'dOp, :IdSubOp, '
      
        '   :IdSubOp_P, :IdOP_M, :idVenda, :idcompra, :idemp, :idNF, :idd' +
        'ev, :cupom, '
      '   :op_manual, :loteCompra)')
    ModifySQL.Strings = (
      'UPDATE Estoque SET'
      '  Data = :Data,'
      '  IdProduto = :IdProduto,'
      '  TpMov = :TpMov,'
      '  Quantidade = :Quantidade,'
      '  Tipo = :Tipo,'
      '  IdUsuario = :IdUsuario,'
      '  IdOp = :IdOp,'
      '  IdSubOp = :IdSubOp,'
      '  IdSubOp_P = :IdSubOp_P,'
      '  IdOP_M = :IdOP_M,'
      '  idVenda = :idVenda,'
      '  idcompra = :idcompra,'
      '  idemp = :idemp,'
      '  idNF = :idNF,'
      '  iddev = :iddev,'
      '  cupom = :cupom,'
      '  op_manual = :op_manual,'
      '  loteCompra = :loteCompra'
      'WHERE'
      
        '  ((Estoque.Id IS NULL AND :OLD_Id IS NULL) OR (Estoque.Id = :OL' +
        'D_Id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TpMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Quantidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdOp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSubOp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSubOp_P'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdOP_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iddev'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cupom'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'op_manual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loteCompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dEstoque: TDataSource
    DataSet = qEstoque
    Left = 295
    Top = 91
  end
  object qCPagar: TZQuery
    Connection = Conex
    UpdateObject = uCPagar
    OnNewRecord = qCPagarNewRecord
    SQL.Strings = (
      'select cpagar.*, dfixa.valor valorfixo, '
      
        '                      centrocusto.descricao, empresa.fantasia , ' +
        'coalesce(compra.numnota, cpagar.ped_nota) numnota'
      '                      from CPagar '
      
        '                      left join centrocusto on centrocusto.id = ' +
        'CPagar.idcusto'
      
        '                      left join dfixa on dfixa.id = cpagar.idcom' +
        'pra and cpagar.tipo = '#39'D'#39' '
      
        '                      left join empresa on empresa.id = cpagar.i' +
        'demp '
      
        '                      left join compra on compra.id = cpagar.idc' +
        'ompra and cpagar.tipo = '#39'C'#39
      '                      where cpagar.IDFORNECEDOR = :cli '
      '                      and cpagar.baixa = :bx and cpagar.ex = 0 '
      
        '                      and ((:emp = 0) or (cpagar.idemp = :emp)) ' +
        ' '
      
        '                      and ((:tp = '#39'X'#39') or (cpagar.tipofinan = :t' +
        'p)) and'
      
        '                      ((:dd = 0) or (cpagar.venci between :di an' +
        'd :df)) and '
      
        '                      ((:dp = 0) or ( cast(cpagar.dtpagto as dat' +
        'e) between :dpi and :dpf))'
      ''
      ''
      '                      order by cpagar.venci')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'di'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'df'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dpi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dpf'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'di'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'df'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dpi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dpf'
        ParamType = ptUnknown
      end>
    object qCPagarId: TIntegerField
      FieldName = 'Id'
    end
    object qCPagarEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qCPagarIdFornecedor: TIntegerField
      FieldName = 'IdFornecedor'
    end
    object qCPagarDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object qCPagarVenci: TDateTimeField
      FieldName = 'Venci'
      OnSetText = qCPagarVenciSetText
      EditMask = '!99/99/9999;1;_'
    end
    object qCPagarValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagarDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qCPagarValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagaridSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qCPagarIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qCPagarEx: TIntegerField
      FieldName = 'Ex'
    end
    object qCPagarBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qCPagaridBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qCPagaridOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qCPagaridcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qCPagarobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qCPagarTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qCPagarx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qCPagarIdCompra: TIntegerField
      FieldName = 'IdCompra'
    end
    object qCPagarValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagarValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagarFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qCPagarFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qCPagarjuros: TFloatField
      FieldName = 'juros'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagardesconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagartotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCPagaridcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qCPagarvalorfixo: TFloatField
      FieldName = 'valorfixo'
    end
    object qCPagardescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qCPagaridnf: TIntegerField
      FieldName = 'idnf'
    end
    object qCPagaridemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qCPagarfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qCPagarnumnota: TIntegerField
      FieldName = 'numnota'
    end
    object qCPagarped_nota: TIntegerField
      FieldName = 'ped_nota'
    end
    object qCPagardoc_bx_parcial: TWideStringField
      FieldName = 'doc_bx_parcial'
    end
    object qCPagartipoFinan: TWideStringField
      FieldName = 'tipoFinan'
      Required = True
      Size = 1
    end
    object qCPagaridBaixa2: TIntegerField
      FieldName = 'idBaixa2'
    end
  end
  object uCPagar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CPagar'
      'WHERE'
      '  CPagar.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO CPagar'
      
        '  (Id, Emissao, IdFornecedor, Documento, Venci, Valor, Baixa, id' +
        'Baixa, '
      
        '   DtPagto, ValPago, idSubOP_P, IdUsuario, Ex, idOP_M, Valorfpgt' +
        'o, Valorfpgto2, '
      
        '   idcondpgto, obs, Tipo, x, IdCompra, Fpgto, Fpgto2, juros, des' +
        'conto, '
      
        '   total, idcusto, idnf, idemp, ped_nota, doc_bx_parcial, tipoFi' +
        'nan, idBaixa2)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdFornecedor, :Documento, :Venci, :Valor, :Ba' +
        'ixa, :idBaixa, '
      
        '   :DtPagto, :ValPago, :idSubOP_P, :IdUsuario, :Ex, :idOP_M, :Va' +
        'lorfpgto, '
      
        '   :Valorfpgto2, :idcondpgto, :obs, :Tipo, :x, :IdCompra, :Fpgto' +
        ', :Fpgto2, '
      
        '   :juros, :desconto, :total, :idcusto, :idnf, :idemp, :ped_nota' +
        ', :doc_bx_parcial, '
      '   :tipoFinan, :idBaixa2)')
    ModifySQL.Strings = (
      'UPDATE CPagar SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdFornecedor = :IdFornecedor,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  idSubOP_P = :idSubOP_P,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  idOP_M = :idOP_M,'
      '  Valorfpgto = :Valorfpgto,'
      '  Valorfpgto2 = :Valorfpgto2,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  x = :x,'
      '  IdCompra = :IdCompra,'
      '  Fpgto = :Fpgto,'
      '  Fpgto2 = :Fpgto2,'
      '  juros = :juros,'
      '  desconto = :desconto,'
      '  total = :total,'
      '  idcusto = :idcusto,'
      '  idnf = :idnf,'
      '  idemp = :idemp,'
      '  ped_nota = :ped_nota,'
      '  doc_bx_parcial = :doc_bx_parcial,'
      '  tipoFinan = :tipoFinan,'
      '  idBaixa2 = :idBaixa2'
      'WHERE'
      '  CPagar.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSubOp_P'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idOP_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ped_nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'doc_bx_parcial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoFinan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dCPagar: TDataSource
    DataSet = qCPagar
    Left = 295
    Top = 147
  end
  object Cx: TZQuery
    Connection = Conex
    UpdateObject = uCx
    OnNewRecord = CxNewRecord
    SQL.Strings = (
      'select * from MovCaixa'
      'where id = 0')
    Params = <>
    Left = 376
    Top = 73
    object CxId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object CxData: TDateTimeField
      FieldName = 'Data'
    end
    object CxIdConta: TIntegerField
      FieldName = 'IdConta'
    end
    object CxidMov: TIntegerField
      FieldName = 'idMov'
    end
    object CxIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object CxValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object CxFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object CxValorFpgto: TFloatField
      FieldName = 'ValorFpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object CxDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object CxTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object CxJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,##0.00'
    end
    object CxTPMov: TWideStringField
      FieldName = 'TPMov'
      Size = 1
    end
    object CxSegundaForma: TWideStringField
      FieldName = 'SegundaForma'
      Required = True
      Size = 1
    end
    object CxDescri: TWideStringField
      FieldName = 'Descri'
      Size = 100
    end
    object CxTroco: TFloatField
      FieldName = 'Troco'
      DisplayFormat = '###,###,##0.00'
    end
    object CxF_dinheiro: TFloatField
      FieldName = 'F_dinheiro'
      DisplayFormat = '###,###,##0.00'
    end
    object CxF_cheque: TFloatField
      FieldName = 'F_cheque'
      DisplayFormat = '###,###,##0.00'
    end
    object CxF_debito: TFloatField
      FieldName = 'F_debito'
      DisplayFormat = '###,###,##0.00'
    end
    object CxF_credito: TFloatField
      FieldName = 'F_credito'
      DisplayFormat = '###,###,##0.00'
    end
    object CxPendente: TWideStringField
      FieldName = 'Pendente'
      Required = True
      Size = 1
    end
    object Cxidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object CxLancamentoCheque: TWideStringField
      FieldName = 'LancamentoCheque'
      Size = 1
    end
    object Cxestorno: TWideStringField
      FieldName = 'estorno'
      Required = True
      Size = 1
    end
    object CxF_pix: TFloatField
      FieldName = 'F_pix'
    end
  end
  object uCx: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM MovCaixa'
      'WHERE'
      '  MovCaixa.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO MovCaixa'
      
        '  (Id, Data, IdConta, idMov, IdUsuario, Valor, Fpgto, ValorFpgto' +
        ', Desconto, '
      
        '   Total, Juros, TPMov, SegundaForma, Descri, Troco, F_dinheiro,' +
        ' F_cheque, '
      
        '   F_debito, F_credito, Pendente, idemp, LancamentoCheque, estor' +
        'no, F_pix)'
      'VALUES'
      
        '  (:Id, :Data, :IdConta, :idMov, :IdUsuario, :Valor, :Fpgto, :Va' +
        'lorFpgto, '
      
        '   :Desconto, :Total, :Juros, :TPMov, :SegundaForma, :Descri, :T' +
        'roco, :F_dinheiro, '
      
        '   :F_cheque, :F_debito, :F_credito, :Pendente, :idemp, :Lancame' +
        'ntoCheque, '
      '   :estorno, :F_pix)')
    ModifySQL.Strings = (
      'UPDATE MovCaixa SET'
      '  Id = :Id,'
      '  Data = :Data,'
      '  IdConta = :IdConta,'
      '  idMov = :idMov,'
      '  IdUsuario = :IdUsuario,'
      '  Valor = :Valor,'
      '  Fpgto = :Fpgto,'
      '  ValorFpgto = :ValorFpgto,'
      '  Desconto = :Desconto,'
      '  Total = :Total,'
      '  Juros = :Juros,'
      '  TPMov = :TPMov,'
      '  SegundaForma = :SegundaForma,'
      '  Descri = :Descri,'
      '  Troco = :Troco,'
      '  F_dinheiro = :F_dinheiro,'
      '  F_cheque = :F_cheque,'
      '  F_debito = :F_debito,'
      '  F_credito = :F_credito,'
      '  Pendente = :Pendente,'
      '  idemp = :idemp,'
      '  LancamentoCheque = :LancamentoCheque,'
      '  estorno = :estorno,'
      '  F_pix   = :F_pix'
      'WHERE'
      '  MovCaixa.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 416
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdConta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValorFpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SegundaForma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Troco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F_dinheiro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F_cheque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F_debito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F_credito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pendente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LancamentoCheque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estorno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F_pix'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dCx: TDataSource
    DataSet = Cx
    Left = 455
    Top = 73
  end
  object CRec: TZQuery
    Connection = Conex
    UpdateObject = uRec
    OnNewRecord = CRecNewRecord
    SQL.Strings = (
      'select * from CReceber'
      'where id = 0')
    Params = <>
    Left = 376
    Top = 137
    object CRecId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object CRecEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object CRecIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object CRecDocumento: TWideStringField
      FieldName = 'Documento'
      Size = 100
    end
    object CRecVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object CRecValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object CRecidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object CRecDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object CRecValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecidVenda: TIntegerField
      FieldName = 'idVenda'
    end
    object CRecIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object CRecEx: TIntegerField
      FieldName = 'Ex'
    end
    object CRecx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object CRecJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecFpgto1: TWideStringField
      FieldName = 'Fpgto1'
      Size = 50
    end
    object CRecValor1: TFloatField
      FieldName = 'Valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object CRecValor2: TFloatField
      FieldName = 'Valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object CRecidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object CRecobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object CRecTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object CRecidnf: TIntegerField
      FieldName = 'idnf'
    end
    object CRecgerado_boleto: TWideStringField
      FieldName = 'gerado_boleto'
      Required = True
      Size = 1
    end
    object CRecdoc_bx_parcial: TWideStringField
      FieldName = 'doc_bx_parcial'
    end
    object CRecidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object CRecsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object CRecemail_vencidas: TWideStringField
      FieldName = 'email_vencidas'
      Size = 1
    end
    object CRecidretorno: TIntegerField
      FieldName = 'idretorno'
    end
    object CRecbenviando: TWideStringField
      FieldName = 'benviando'
      Required = True
      Size = 1
    end
    object CRecbimpresso: TWideStringField
      FieldName = 'bimpresso'
      Required = True
      Size = 1
    end
    object CRecnn_sicred: TWideStringField
      FieldName = 'nn_sicred'
    end
    object CRecbconta: TIntegerField
      FieldName = 'bconta'
    end
    object CRecgeradoBol: TWideStringField
      FieldName = 'geradoBol'
      Required = True
      Size = 1
    end
    object CRecusuario_baixa: TIntegerField
      FieldName = 'usuario_baixa'
    end
    object CRecidVendaOriginal: TIntegerField
      FieldName = 'idVendaOriginal'
    end
    object CRecidBaixa2: TIntegerField
      FieldName = 'idBaixa2'
    end
    object CRecnParc: TIntegerField
      FieldName = 'nParc'
    end
  end
  object uRec: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CReceber'
      'WHERE'
      '  CReceber.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO CReceber'
      
        '  (Id, Emissao, IdCliente, Documento, Venci, Valor, Juros, Desco' +
        'nto, Total, '
      
        '   Baixa, idBaixa, DtPagto, ValPago, Fpgto1, Valor1, Fpgto2, Val' +
        'or2, idVenda, '
      
        '   IdUsuario, Ex, x, idcondpgto, obs, Tipo, idnf, doc_bx_parcial' +
        ', gerado_boleto, '
      
        '   idemp, sincronizado, email_vencidas, idretorno, benviando, bi' +
        'mpresso, '
      
        '   nn_sicred, bconta, geradoBol, idVendaOriginal, usuario_baixa,' +
        ' idBaixa2, '
      '   nParc)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdCliente, :Documento, :Venci, :Valor, :Juros' +
        ', :Desconto, '
      
        '   :Total, :Baixa, :idBaixa, :DtPagto, :ValPago, :Fpgto1, :Valor' +
        '1, :Fpgto2, '
      
        '   :Valor2, :idVenda, :IdUsuario, :Ex, :x, :idcondpgto, :obs, :T' +
        'ipo, :idnf, '
      
        '   :doc_bx_parcial, :gerado_boleto, :idemp, :sincronizado, :emai' +
        'l_vencidas, '
      
        '   :idretorno, :benviando, :bimpresso, :nn_sicred, :bconta, :ger' +
        'adoBol, '
      '   :idVendaOriginal, :usuario_baixa, :idBaixa2, :nParc)')
    ModifySQL.Strings = (
      'UPDATE CReceber SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdCliente = :IdCliente,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Juros = :Juros,'
      '  Desconto = :Desconto,'
      '  Total = :Total,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  Fpgto1 = :Fpgto1,'
      '  Valor1 = :Valor1,'
      '  Fpgto2 = :Fpgto2,'
      '  Valor2 = :Valor2,'
      '  idVenda = :idVenda,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  x = :x,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  idnf = :idnf,'
      '  doc_bx_parcial = :doc_bx_parcial,'
      '  gerado_boleto = :gerado_boleto,'
      '  idemp = :idemp,'
      '  sincronizado = :sincronizado,'
      '  email_vencidas = :email_vencidas,'
      '  idretorno = :idretorno,'
      '  benviando = :benviando,'
      '  bimpresso = :bimpresso,'
      '  nn_sicred = :nn_sicred,'
      '  bconta = :bconta,'
      '  geradoBol = :geradoBol,'
      '  idVendaOriginal = :idVendaOriginal,'
      '  usuario_baixa = :usuario_baixa,'
      '  idBaixa2 = :idBaixa2,'
      '  nParc = :nParc'
      'WHERE'
      '  CReceber.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 416
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'doc_bx_parcial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gerado_boleto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email_vencidas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idretorno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'benviando'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bimpresso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nn_sicred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bconta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'geradoBol'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idVendaOriginal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario_baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nParc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dRec: TDataSource
    DataSet = CRec
    Left = 455
    Top = 137
  end
  object qCReceber: TZQuery
    Connection = Conex
    UpdateObject = uCReceber
    OnNewRecord = qCReceberNewRecord
    SQL.Strings = (
      'select * from CReceber'
      'where id = 0')
    Params = <>
    Left = 376
    Top = 193
    object qCReceberId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCReceberEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qCReceberIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qCReceberDocumento: TWideStringField
      FieldName = 'Documento'
      Size = 100
    end
    object qCReceberVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object qCReceberValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qCReceberidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qCReceberDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qCReceberValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberidVenda: TIntegerField
      FieldName = 'idVenda'
    end
    object qCReceberIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qCReceberEx: TIntegerField
      FieldName = 'Ex'
    end
    object qCReceberx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qCReceberJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberFpgto1: TWideStringField
      FieldName = 'Fpgto1'
      Size = 50
    end
    object qCReceberValor1: TFloatField
      FieldName = 'Valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qCReceberValor2: TFloatField
      FieldName = 'Valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qCReceberobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qCReceberTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qCReceberidnf: TIntegerField
      FieldName = 'idnf'
    end
    object qCReceberdoc_bx_parcial: TWideStringField
      FieldName = 'doc_bx_parcial'
    end
    object qCRecebergerado_boleto: TWideStringField
      FieldName = 'gerado_boleto'
      Required = True
      Size = 1
    end
    object qCReceberidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qCRecebersincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCReceberemail_vencidas: TWideStringField
      FieldName = 'email_vencidas'
      Size = 1
    end
    object qCReceberidretorno: TIntegerField
      FieldName = 'idretorno'
    end
    object qCReceberbenviando: TWideStringField
      FieldName = 'benviando'
      Required = True
      Size = 1
    end
    object qCReceberbimpresso: TWideStringField
      FieldName = 'bimpresso'
      Required = True
      Size = 1
    end
    object qCRecebernn_sicred: TWideStringField
      FieldName = 'nn_sicred'
    end
    object qCReceberbconta: TIntegerField
      FieldName = 'bconta'
    end
    object qCRecebergeradoBol: TWideStringField
      FieldName = 'geradoBol'
      Required = True
      Size = 1
    end
    object qCReceberidVendaOriginal: TIntegerField
      FieldName = 'idVendaOriginal'
    end
    object qCReceberusuario_baixa: TIntegerField
      FieldName = 'usuario_baixa'
    end
    object qCReceberidBaixa2: TIntegerField
      FieldName = 'idBaixa2'
    end
  end
  object uCReceber: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CReceber'
      'WHERE'
      '  CReceber.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO CReceber'
      
        '  (Id, Emissao, IdCliente, Documento, Venci, Valor, Juros, Desco' +
        'nto, Total, '
      
        '   Baixa, idBaixa, DtPagto, ValPago, Fpgto1, Valor1, Fpgto2, Val' +
        'or2, idVenda, '
      
        '   IdUsuario, Ex, x, idcondpgto, obs, Tipo, idnf, doc_bx_parcial' +
        ', gerado_boleto, '
      
        '   idemp, sincronizado, email_vencidas, idretorno, benviando, bi' +
        'mpresso, '
      
        '   nn_sicred, bconta, geradoBol, idVendaOriginal, usuario_baixa,' +
        ' idBaixa2)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdCliente, :Documento, :Venci, :Valor, :Juros' +
        ', :Desconto, '
      
        '   :Total, :Baixa, :idBaixa, :DtPagto, :ValPago, :Fpgto1, :Valor' +
        '1, :Fpgto2, '
      
        '   :Valor2, :idVenda, :IdUsuario, :Ex, :x, :idcondpgto, :obs, :T' +
        'ipo, :idnf, '
      
        '   :doc_bx_parcial, :gerado_boleto, :idemp, :sincronizado, :emai' +
        'l_vencidas, '
      
        '   :idretorno, :benviando, :bimpresso, :nn_sicred, :bconta, :ger' +
        'adoBol, '
      '   :idVendaOriginal, :usuario_baixa, :idBaixa2)')
    ModifySQL.Strings = (
      'UPDATE CReceber SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdCliente = :IdCliente,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Juros = :Juros,'
      '  Desconto = :Desconto,'
      '  Total = :Total,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  Fpgto1 = :Fpgto1,'
      '  Valor1 = :Valor1,'
      '  Fpgto2 = :Fpgto2,'
      '  Valor2 = :Valor2,'
      '  idVenda = :idVenda,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  x = :x,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  idnf = :idnf,'
      '  doc_bx_parcial = :doc_bx_parcial,'
      '  gerado_boleto = :gerado_boleto,'
      '  idemp = :idemp,'
      '  sincronizado = :sincronizado,'
      '  email_vencidas = :email_vencidas,'
      '  idretorno = :idretorno,'
      '  benviando = :benviando,'
      '  bimpresso = :bimpresso,'
      '  nn_sicred = :nn_sicred,'
      '  bconta = :bconta,'
      '  geradoBol = :geradoBol,'
      '  idVendaOriginal = :idVendaOriginal,'
      '  usuario_baixa = :usuario_baixa,'
      '  idBaixa2 = :idBaixa2'
      'WHERE'
      '  CReceber.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 416
    Top = 193
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'doc_bx_parcial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gerado_boleto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email_vencidas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idretorno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'benviando'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bimpresso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nn_sicred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bconta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'geradoBol'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idVendaOriginal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario_baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dCReceber: TDataSource
    DataSet = qCReceber
    Left = 455
    Top = 193
  end
  object qCusto: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from Centrocusto'
      'order by descricao')
    Params = <>
    Left = 376
    Top = 300
    object qCustoId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCustoDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qCustoTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object dCusto: TDataSource
    DataSet = qCusto
    Left = 415
    Top = 300
  end
  object qCompra: TZQuery
    Connection = Conex
    UpdateObject = uCompra
    OnNewRecord = qCReceberNewRecord
    SQL.Strings = (
      'select compra.id, compra.DATA, compra.IDFORNECEDOR , '
      
        '                    fornecedor.NOME, compra.VALOR, compra.NUMNOT' +
        'A'
      '                    from compra '
      
        '                    left join fornecedor ON fornecedor.id = comp' +
        'ra.IDFORNECEDOR'
      '                    where fornecedor.nome like :pesq'
      '                    Order By compra.id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object qCompraid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qCompraDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qCompraIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object qCompraNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qCompraVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qCompraNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
  end
  object uCompra: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM compra'
      'WHERE'
      '  compra.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO compra'
      '  (id, DATA, IDFORNECEDOR, NOME, VALOR, NUMNOTA)'
      'VALUES'
      '  (:id, :DATA, :IDFORNECEDOR, :NOME, :VALOR, :NUMNOTA)')
    ModifySQL.Strings = (
      'UPDATE compra SET'
      '  id = :id,'
      '  DATA = :DATA,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  NOME = :NOME,'
      '  VALOR = :VALOR,'
      '  NUMNOTA = :NUMNOTA'
      'WHERE'
      '  compra.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDFORNECEDOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMNOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dCompra: TDataSource
    DataSet = qCompra
    Left = 295
    Top = 328
  end
  object qImpCompra: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select fornecedor.NOME, '
      'case '
      ' when compra_i.tipo = '#39'S'#39' then  semi_acabado.DESCRICAO'
      ' when compra_i.tipo = '#39'P'#39' then  produto.DESCRICAO'
      ' when compra_i.tipo = '#39'M'#39' then  produto.DESCRICAO'
      'end as DESCRICAO, '
      'cond_pgto.DESCRICAO AS DESPGTO,'
      'compra_i.unitario unit,'
      'compra_i.total totpro,'
      'compra.*, compra_i.*,'
      'usuario.nome nomeSol'
      ''
      'from compra'
      'LEFT JOIN compra_i ON compra_i.IDCOMPRA = compra.ID'
      'LEFT JOIN fornecedor ON fornecedor.ID = compra.IDFORNECEDOR'
      'LEFT JOIN cond_pgto ON cond_pgto.ID = compra.idcondpgto'
      
        'LEFT JOIN semi_acabado ON semi_acabado.ID = compra_i.IDPRODUTO a' +
        'nd compra_i.tipo = '#39'S'#39
      
        'LEFT JOIN produto ON produto.ID = compra_i.IDPRODUTO  and compra' +
        '_i.tipo in ('#39'P'#39','#39'M'#39')'
      'LEFT JOIN usuario ON usuario.ID = compra.IDsolicitante'
      'WHERE compra.ID = :COD')
    Params = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object qImpCompraID: TIntegerField
      FieldName = 'ID'
    end
    object qImpCompraIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object qImpCompraVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qImpCompraVALICMS: TFloatField
      FieldName = 'VALICMS'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraVALIPI: TFloatField
      FieldName = 'VALIPI'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object qImpCompraID_1: TIntegerField
      FieldName = 'ID_1'
    end
    object qImpCompraIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      Required = True
    end
    object qImpCompraIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object qImpCompraQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,###,##0.000'
    end
    object qImpCompraTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraST2: TFloatField
      FieldName = 'ST2'
    end
    object qImpCompraFRETE2: TFloatField
      FieldName = 'FRETE2'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraUNITLIQ: TFloatField
      FieldName = 'UNITLIQ'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraST: TFloatField
      FieldName = 'ST'
    end
    object qImpCompraOUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object qImpCompraFRETE_1: TFloatField
      FieldName = 'FRETE_1'
    end
    object qImpCompraOBS: TWideStringField
      FieldName = 'OBS'
      Size = 255
    end
    object qImpComprabaseicmsst: TFloatField
      FieldName = 'baseicmsst'
    end
    object qImpCompravaloricmsst: TFloatField
      FieldName = 'valoricmsst'
    end
    object qImpCompravlrseguro: TFloatField
      FieldName = 'vlrseguro'
    end
    object qImpCompravlrdesconto: TFloatField
      FieldName = 'vlrdesconto'
    end
    object qImpCompracfop: TIntegerField
      FieldName = 'cfop'
    end
    object qImpCompramodelo: TWideStringField
      FieldName = 'modelo'
      Size = 2
    end
    object qImpCompraserie: TWideStringField
      FieldName = 'serie'
      Size = 3
    end
    object qImpComprasubserie: TWideStringField
      FieldName = 'subserie'
      Size = 2
    end
    object qImpCompratpfrete: TIntegerField
      FieldName = 'tpfrete'
    end
    object qImpCompraDESCONTO_1: TFloatField
      FieldName = 'DESCONTO_1'
      DisplayFormat = '0.00'
    end
    object qImpCompraTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qImpCompracst: TWideStringField
      FieldName = 'cst'
      Size = 3
    end
    object qImpCompracfop_1: TIntegerField
      FieldName = 'cfop_1'
    end
    object qImpCompraicms: TFloatField
      FieldName = 'icms'
    end
    object qImpCompraNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qImpCompraDESPGTO: TWideStringField
      FieldName = 'DESPGTO'
      Size = 60
    end
    object qImpCompraidCusto: TIntegerField
      FieldName = 'idCusto'
    end
    object qImpCompraidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qImpCompraEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object qImpCompraX: TWideStringField
      FieldName = 'X'
      Required = True
      Size = 1
    end
    object qImpCompraUnitario: TFloatField
      FieldName = 'Unitario'
    end
    object qImpCompraDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qImpCompraunit: TFloatField
      FieldName = 'unit'
      DisplayFormat = '###,###,###,##0.000'
    end
    object qImpCompraDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 150
    end
    object qImpCompratotpro: TFloatField
      FieldName = 'totpro'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpCompraforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 50
    end
    object qImpCompraidsolicitante: TIntegerField
      FieldName = 'idsolicitante'
      ReadOnly = True
    end
    object qImpCompranomeSol: TWideStringField
      FieldName = 'nomeSol'
      Size = 50
    end
  end
  object dImpCompra: TDataSource
    DataSet = qImpCompra
    Left = 576
    Top = 121
  end
  object qFinanCompra: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select cpagar.documento, cpagar.valor, cpagar.venci'
      'from cpagar'
      'where cpagar.idcompra = :com'
      'and ex = 0 and tipo = '#39'C'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'com'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'com'
        ParamType = ptUnknown
      end>
    object qFinanCompravalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qFinanCompradocumento: TWideStringField
      FieldName = 'documento'
    end
    object qFinanCompravenci: TDateTimeField
      FieldName = 'venci'
    end
  end
  object dFinanCompra: TDataSource
    DataSet = qFinanCompra
    Left = 576
    Top = 73
  end
  object qRelCPagar: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      ' cpagar.*, '
      ' fornecedor.nome,'
      ' centrocusto.descricao descusto'
      'from cpagar'
      'inner join fornecedor on fornecedor.id = cpagar.idfornecedor'
      'left join centrocusto on centrocusto.id = cpagar.idcusto'
      'where '
      ' ((:dt = 0) or (cpagar.venci between :dtini and :dtfim))  and '
      ' cpagar.ex = 0 and '
      ' cpagar.baixa = '#39'N'#39' and '
      ' ((:cli = 0 ) or (cpagar.idfornecedor = :cli)) and '
      ' ((:Cc = 0) or (cpagar.idcusto = :Cc))'
      'order by cpagar.venci')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cc'
        ParamType = ptUnknown
      end>
    Left = 542
    Top = 329
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cc'
        ParamType = ptUnknown
      end>
    object qRelCPagarID: TIntegerField
      FieldName = 'ID'
    end
    object qRelCPagarIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object qRelCPagarVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagarVALPAGO: TFloatField
      FieldName = 'VALPAGO'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagarJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagarEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRelCPagarTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagarIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
    end
    object qRelCPagarIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object qRelCPagarDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qRelCPagarBAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object qRelCPagarX: TWideStringField
      FieldName = 'X'
      Size = 1
    end
    object qRelCPagarTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qRelCPagarFPGTO: TWideStringField
      FieldName = 'FPGTO'
    end
    object qRelCPagarFPGTO2: TWideStringField
      FieldName = 'FPGTO2'
    end
    object qRelCPagarnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object qRelCPagardescusto: TWideStringField
      FieldName = 'descusto'
      Size = 100
    end
    object qRelCPagarEmissao: TDateTimeField
      FieldName = 'Emissao'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCPagarVenci: TDateTimeField
      FieldName = 'Venci'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCPagaridBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qRelCPagarDtPagto: TDateTimeField
      FieldName = 'DtPagto'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCPagaridSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qRelCPagaridOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qRelCPagaridcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qRelCPagarValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
    end
    object qRelCPagarValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
    end
    object qRelCPagaridcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qRelCPagarobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
  end
  object dRelCPagar: TDataSource
    DataSet = qRelCPagar
    Left = 574
    Top = 329
  end
  object qRelCPagas: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      ' centrocusto.descricao DESCUSTO,'
      ' cpagar.*, '
      ' fornecedor.nome'
      'from cpagar'
      'left join fornecedor on fornecedor.id = cpagar.idfornecedor'
      'left join centrocusto on centrocusto.id = cpagar.idcusto'
      'where '
      ' cpagar.ex = 0 and '
      ' cpagar.baixa = '#39'S'#39'  and '
      ' ((:dt = 0) or (cpagar.venci between :dtini and :dtfim)) and'
      
        ' ((:dtp = 0) or (cpagar.dtpagto between :dtpini and :dtpfim)) an' +
        'd '
      ' ((:cli = 0 ) or (cpagar.idfornecedor = :cli))  and '
      ' ((:cc = 0) or (cpagar.idcusto = :cc))'
      ''
      'order by cpagar.dtpagto'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cc'
        ParamType = ptUnknown
      end>
    Left = 542
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cc'
        ParamType = ptUnknown
      end>
    object qRelCPagasID: TIntegerField
      FieldName = 'ID'
    end
    object qRelCPagasIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object qRelCPagasVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagasVALPAGO: TFloatField
      FieldName = 'VALPAGO'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagasJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagasEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRelCPagasTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCPagasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qRelCPagasIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
    end
    object qRelCPagasIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object qRelCPagasDESCUSTO: TWideStringField
      FieldName = 'DESCUSTO'
      Size = 100
    end
    object qRelCPagasDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qRelCPagasBAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object qRelCPagasX: TWideStringField
      FieldName = 'X'
      Size = 1
    end
    object qRelCPagasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qRelCPagasFPGTO: TWideStringField
      FieldName = 'FPGTO'
    end
    object qRelCPagasFPGTO2: TWideStringField
      FieldName = 'FPGTO2'
    end
    object qRelCPagasnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object qRelCPagasidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qRelCPagasidSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qRelCPagasidOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qRelCPagasidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qRelCPagasValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
    end
    object qRelCPagasValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
    end
    object qRelCPagasidcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qRelCPagasEmissao: TDateTimeField
      FieldName = 'Emissao'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCPagasVenci: TDateTimeField
      FieldName = 'Venci'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCPagasDtPagto: TDateTimeField
      FieldName = 'DtPagto'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCPagasobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
  end
  object dRelPagas: TDataSource
    DataSet = qRelCPagas
    Left = 574
    Top = 273
  end
  object qRelCReceber: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      ' creceber.*, '
      ' cliente.nome'
      'from creceber'
      'left join cliente on cliente.id = creceber.idcliente'
      'where '
      
        ' ((:dt = 0) or (cast(creceber.venci as date) between :dtini and ' +
        ':dtfim))  and '
      ' creceber.ex = 0 and '
      ' creceber.baixa = '#39'N'#39' and '
      ' ((:cli = 0 ) or (creceber.idcliente = :cli)) '
      'order by creceber.venci')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 225
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end>
    object qRelCReceberID: TIntegerField
      FieldName = 'ID'
    end
    object qRelCReceberIDCliente: TIntegerField
      FieldName = 'IDCliente'
    end
    object qRelCReceberVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCReceberVALPAGO: TFloatField
      FieldName = 'VALPAGO'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCReceberJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCReceberEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRelCReceberTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCReceberDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCReceberIDVenda: TIntegerField
      FieldName = 'IDVenda'
    end
    object qRelCReceberIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object qRelCReceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
      Size = 100
    end
    object qRelCReceberBAIXA: TWideStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object qRelCReceberX: TWideStringField
      FieldName = 'X'
      Size = 1
    end
    object qRelCReceberTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qRelCRecebernome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qRelCReceberEmissao: TDateTimeField
      FieldName = 'Emissao'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCReceberVenci: TDateTimeField
      FieldName = 'Venci'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCReceberidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qRelCReceberDtPagto: TDateTimeField
      FieldName = 'DtPagto'
      EditMask = '!99/99/9900;1;_'
    end
    object qRelCReceberFpgto1: TWideStringField
      FieldName = 'Fpgto1'
      Size = 50
    end
    object qRelCReceberValor1: TFloatField
      FieldName = 'Valor1'
    end
    object qRelCReceberValor2: TFloatField
      FieldName = 'Valor2'
    end
    object qRelCReceberidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qRelCReceberobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qRelCReceberFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
  end
  object dRelCReceber: TDataSource
    DataSet = qRelCReceber
    Left = 576
    Top = 225
  end
  object qRelCRecebidas: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select creceber.idcliente, cliente.nome,'
      'creceber.documento, creceber.emissao, creceber.venci, '
      
        'creceber.total, FORMAT(dtpagto, '#39'dd/MM/yyyy'#39') dtpagto, creceber.' +
        'valpago, '
      'coalesce(creceber.valor1, movcaixa.valorfpgto) valpgto,'
      
        'movcaixa.fpgto fpgto1, creceber.valor1, creceber.fpgto2, crecebe' +
        'r.valor2'
      
        ', creceber.valor, creceber.juros, usuario.nome usu_baixa, creceb' +
        'er.desconto,'
      
        'creceber.valpago - coalesce(creceber.juros,0) + coalesce(crecebe' +
        'r.desconto,0) valPagoBruto'
      'from creceber'
      'inner join cliente on cliente.id = creceber.idcliente'
      'left join movcaixa on movcaixa.id = creceber.idbaixa'
      'left join usuario on usuario.id = creceber.usuario_baixa'
      'where '
      
        ' ((:dt = 0) or (cast(creceber.venci as date) between :dtini and ' +
        ':dtfim))  and '
      
        ' ((:dtp = 0) or (cast(creceber.dtpagto as date) between :dtpini ' +
        'and :dtpfim))  and '
      ' creceber.ex = 0 and '
      ' creceber.baixa = '#39'S'#39' and '
      ' ((:cli = 0 ) or (creceber.idcliente = :cli))  and '
      ' coalesce( creceber.valor1,0) > 0'
      'order by creceber.dtpagto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    object qRelCRecebidasidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qRelCRecebidasnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qRelCRecebidasdocumento: TWideStringField
      FieldName = 'documento'
      Size = 100
    end
    object qRelCRecebidasemissao: TDateTimeField
      FieldName = 'emissao'
    end
    object qRelCRecebidasvenci: TDateTimeField
      FieldName = 'venci'
    end
    object qRelCRecebidastotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCRecebidasvalpago: TFloatField
      FieldName = 'valpago'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCRecebidasvalpgto: TFloatField
      FieldName = 'valpgto'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCRecebidasfpgto1: TWideStringField
      FieldName = 'fpgto1'
      Size = 50
    end
    object qRelCRecebidasvalor1: TFloatField
      FieldName = 'valor1'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCRecebidasfpgto2: TWideStringField
      FieldName = 'fpgto2'
      Size = 50
    end
    object qRelCRecebidasvalor2: TFloatField
      FieldName = 'valor2'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCRecebidasvalor: TFloatField
      FieldName = 'valor'
    end
    object qRelCRecebidasjuros: TFloatField
      FieldName = 'juros'
    end
    object qRelCRecebidasusu_baixa: TWideStringField
      FieldName = 'usu_baixa'
      Size = 50
    end
    object qRelCRecebidasdesconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qRelCRecebidasdtpagto: TWideStringField
      FieldName = 'dtpagto'
      ReadOnly = True
    end
    object qRelCRecebidasvalPagoBruto: TFloatField
      FieldName = 'valPagoBruto'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dRelRecebidas: TDataSource
    DataSet = qRelCRecebidas
    Left = 576
    Top = 177
  end
  object dSelect: TDataSource
    DataSet = qSelect
    Left = 51
    Top = 130
  end
  object qConta: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select conta.* from conta'
      'order by conta.titular')
    Params = <>
    Left = 117
    Top = 247
    object qContaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qContaTITULAR: TWideStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object qContaAG: TWideStringField
      FieldName = 'AG'
      Size = 10
    end
    object qContaCC: TWideStringField
      FieldName = 'CC'
      Size = 30
    end
    object qContaBCO: TWideStringField
      FieldName = 'BCO'
      Size = 3
    end
    object qContaTIPO: TWideStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object qContaIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object qContaUSABOLETO: TWideStringField
      FieldName = 'USABOLETO'
      Required = True
      Size = 1
    end
    object qContaBTIPO: TWideStringField
      FieldName = 'BTIPO'
      Size = 1
    end
    object qContaBAGENCIA: TWideStringField
      FieldName = 'BAGENCIA'
      Size = 10
    end
    object qContaBCONTA: TWideStringField
      FieldName = 'BCONTA'
      Size = 10
    end
    object qContaBCONTAD: TWideStringField
      FieldName = 'BCONTAD'
      Size = 1
    end
    object qContaBCEDENTE: TWideStringField
      FieldName = 'BCEDENTE'
      Size = 10
    end
    object qContaBCEDENTED: TWideStringField
      FieldName = 'BCEDENTED'
      Size = 1
    end
    object qContaBCONVENIO: TWideStringField
      FieldName = 'BCONVENIO'
      Size = 10
    end
    object qContaBCARTEIRA: TWideStringField
      FieldName = 'BCARTEIRA'
      Size = 10
    end
    object qContaBSEQ_REMESSA: TIntegerField
      FieldName = 'BSEQ_REMESSA'
    end
    object qContaMSG_BOLETO: TWideMemoField
      FieldName = 'MSG_BOLETO'
      BlobType = ftWideMemo
    end
    object qContaNOMECEDENTE: TWideStringField
      FieldName = 'NOMECEDENTE'
      Size = 150
    end
    object qContaCNPJCEDENTE: TWideStringField
      FieldName = 'CNPJCEDENTE'
    end
    object qContaDIASPROT: TIntegerField
      FieldName = 'DIASPROT'
    end
    object qContaMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object qContaJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object qContaendcedende: TWideStringField
      FieldName = 'endcedende'
      Size = 80
    end
    object qContanumcedende: TWideStringField
      FieldName = 'numcedende'
      Size = 10
    end
    object qContabaicedende: TWideStringField
      FieldName = 'baicedende'
      Size = 50
    end
    object qContacidcedende: TWideStringField
      FieldName = 'cidcedende'
      Size = 50
    end
    object qContaufcedende: TWideStringField
      FieldName = 'ufcedende'
      Size = 2
    end
    object qContacepcedende: TWideStringField
      FieldName = 'cepcedende'
      Size = 10
    end
    object qContaBCNAB: TIntegerField
      FieldName = 'BCNAB'
      Required = True
    end
    object qContaBAGENCIAD: TWideStringField
      FieldName = 'BAGENCIAD'
      Size = 2
    end
  end
  object dConta: TDataSource
    DataSet = qConta
    Left = 149
    Top = 247
  end
  object qUsu: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select usuario.* from usuario'
      'order by usuario.nome')
    Params = <>
    Left = 117
    Top = 293
    object qUsuId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qUsuNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qUsuSenha: TWideStringField
      FieldName = 'Senha'
      Size = 15
    end
    object qUsuData: TDateTimeField
      FieldName = 'Data'
    end
    object qUsuUser: TWideStringField
      FieldName = 'User'
      Size = 15
    end
    object qUsuTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object qUsuAfastamento: TDateTimeField
      FieldName = 'Afastamento'
    end
    object qUsuCPF: TWideStringField
      FieldName = 'CPF'
      Size = 11
    end
    object qUsuRG: TWideStringField
      FieldName = 'RG'
      Size = 12
    end
    object qUsuNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qUsuEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object qUsuNumero: TWideStringField
      FieldName = 'Numero'
      Size = 10
    end
    object qUsuBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qUsuCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qUsuUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qUsutelefone: TWideStringField
      FieldName = 'telefone'
      Size = 12
    end
    object qUsucelular: TWideStringField
      FieldName = 'celular'
      Size = 12
    end
    object qUsufax: TWideStringField
      FieldName = 'fax'
      Size = 12
    end
    object qUsuemail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object qUsuvenc_ferias: TDateTimeField
      FieldName = 'venc_ferias'
    end
    object qUsuvenc_exame: TDateTimeField
      FieldName = 'venc_exame'
    end
    object qUsuCep: TWideStringField
      FieldName = 'Cep'
      Size = 8
    end
  end
  object dUsu: TDataSource
    DataSet = qUsu
    Left = 149
    Top = 293
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Documento do Word'
    Left = 224
    Top = 9
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 256
    Top = 9
  end
  object RLPreviewSetup1: TRLPreviewSetup
    ZoomFactor = 80.000000000000000000
    OnSend = RLPreviewSetup1Send
    Left = 392
    Top = 9
  end
  object RLDraftFilter1: TRLDraftFilter
    EjectMethod = ejForceWithCode
    DisplayName = 'Matricial'
    Left = 450
    Top = 7
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CharSet = 'utf-8'
    CCList = <>
    ContentType = 'TEXT/HTML'
    Encoding = meMIME
    FromList = <
      item
        Address = 'franciscoerik@thrsolucoes.com.br'
        Text = 'franciscoerik@thrsolucoes.com.br'
        Domain = 'thrsolucoes.com.br'
        User = 'franciscoerik'
      end>
    From.Address = 'franciscoerik@thrsolucoes.com.br'
    From.Text = 'franciscoerik@thrsolucoes.com.br'
    From.Domain = 'thrsolucoes.com.br'
    From.User = 'franciscoerik'
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 544
    Top = 17
  end
  object IdSMTP1: TIdSMTP
    Host = 'smtp.thrsolucoes.com.br'
    Port = 587
    SASLMechanisms = <>
    Username = 'thaisnicoletti@thrsolucoes.com.br'
    ValidateAuthLoginCapability = False
    Left = 608
    Top = 17
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 312
    Top = 9
  end
  object dIBPT: TDataSource
    DataSet = qIBPT
    Left = 56
    Top = 345
  end
  object dPais: TDataSource
    DataSet = tPais
    Left = 56
    Top = 401
  end
  object dOrigem: TDataSource
    DataSet = qOrigem
    Left = 60
    Top = 455
  end
  object dFinal: TDataSource
    DataSet = qFinal
    Left = 148
    Top = 495
  end
  object dTipoEmissao: TDataSource
    DataSet = qTipoEmissao
    Left = 68
    Top = 502
  end
  object qIBPT: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      ' codigo, '
      ' coalesce(aliqNac,0) aliqNac,'
      ' coalesce(aliqEst,0) aliqEst '
      'from ibpt'
      'where codigo like :ncm'
      'order by codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ncm'
        ParamType = ptUnknown
      end>
    Left = 16
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncm'
        ParamType = ptUnknown
      end>
    object qIBPTcodigo: TWideStringField
      FieldName = 'codigo'
    end
    object qIBPTaliqNac: TFloatField
      FieldName = 'aliqNac'
      ReadOnly = True
    end
    object qIBPTaliqEst: TFloatField
      FieldName = 'aliqEst'
      ReadOnly = True
    end
  end
  object tPais: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select pais.* from pais'
      'order by nome')
    Params = <>
    Left = 16
    Top = 399
    object tPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tPaisNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object qTipoEmissao: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select idTipoEmissao, '
      'descricao ,'
      ''
      'cast(idTipoEmissao as varchar) + '#39' - '#39' + descricao  descri'
      ''
      'from TipoEmissao')
    Params = <>
    Left = 24
    Top = 502
    object qTipoEmissaoidTipoEmissao: TIntegerField
      FieldName = 'idTipoEmissao'
    end
    object qTipoEmissaodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qTipoEmissaodescri: TWideStringField
      FieldName = 'descri'
      ReadOnly = True
      Size = 183
    end
  end
  object qFinal: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select idFinal, '
      'descricao ,'
      ''
      'cast(idFinal as varchar) + '#39' - '#39' + descricao  descri'
      ''
      'from Finalidade')
    Params = <>
    Left = 112
    Top = 495
    object qFinalidFinal: TIntegerField
      FieldName = 'idFinal'
    end
    object qFinaldescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qFinaldescri: TWideStringField
      FieldName = 'descri'
      ReadOnly = True
      Size = 183
    end
  end
  object qOrigem: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select idorigem, '
      'descricao ,'
      ''
      ' cast(idorigem as varchar)+  '#39' - '#39' + descricao descri'
      ''
      'from origem')
    Params = <>
    Left = 24
    Top = 455
    object qOrigemidorigem: TIntegerField
      FieldName = 'idorigem'
    end
    object qOrigemdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qOrigemdescri: TWideStringField
      FieldName = 'descri'
      ReadOnly = True
      Size = 183
    end
  end
  object qUpDel: TZQuery
    Connection = Conex
    Params = <>
    Left = 112
    Top = 17
  end
  object qSelPesq: TZQuery
    Connection = Conex
    Params = <>
    Left = 112
    Top = 131
  end
  object dSelPesq: TDataSource
    DataSet = qSelPesq
    Left = 147
    Top = 130
  end
  object dUpDel: TDataSource
    DataSet = qUpDel
    Left = 155
    Top = 16
  end
  object Log_cheque: TZTable
    Connection = Conex
    TableName = 'log_cheque'
    Left = 416
    Top = 405
    object Log_chequeId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object Log_chequeIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object Log_chequeIDCHEQUE: TIntegerField
      FieldName = 'IDCHEQUE'
    end
    object Log_chequeIDMOV: TIntegerField
      FieldName = 'IDMOV'
    end
    object Log_chequeSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 50
    end
    object Log_chequeACAO: TWideStringField
      FieldName = 'ACAO'
      Size = 50
    end
    object Log_chequeDATA: TWideStringField
      FieldName = 'DATA'
    end
    object Log_chequeHORA: TWideStringField
      FieldName = 'HORA'
      Size = 32
    end
  end
  object qCheq: TZQuery
    Connection = Conex
    UpdateObject = uCheq
    BeforePost = qCheqBeforePost
    AfterPost = qCheqAfterPost
    OnNewRecord = qCheqNewRecord
    SQL.Strings = (
      'select * from cheques'
      'where '
      'CODVENDA = :Venda'
      'and idemp = :Emp and'
      'IDCLIENTE = :Cli and '
      'TIPO = :Tipo'
      'order by VENCI')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    object qCheqId: TIntegerField
      FieldName = 'Id'
    end
    object qCheqBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object qCheqIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object qCheqNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object qCheqAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qCheqCONTA: TWideStringField
      FieldName = 'CONTA'
    end
    object qCheqVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qCheqEMITENTE: TWideStringField
      FieldName = 'EMITENTE'
      Size = 80
    end
    object qCheqCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object qCheqCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object qCheqDEVOLVIDO: TIntegerField
      FieldName = 'DEVOLVIDO'
    end
    object qCheqCODFINAN: TIntegerField
      FieldName = 'CODFINAN'
    end
    object qCheqTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qCheqST: TIntegerField
      FieldName = 'ST'
    end
    object qCheqIDMOVCAIXA: TIntegerField
      FieldName = 'IDMOVCAIXA'
    end
    object qCheqSTANTERIOR: TIntegerField
      FieldName = 'STANTERIOR'
    end
    object qCheqCONTAANTERIOR: TIntegerField
      FieldName = 'CONTAANTERIOR'
    end
    object qCheqX: TWideStringField
      FieldName = 'X'
      Size = 1
    end
    object qCheqIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object qCheqCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qCheqTEL: TWideStringField
      FieldName = 'TEL'
      EditMask = '(##) #########;0;_'
    end
    object qCheqEX: TIntegerField
      FieldName = 'EX'
    end
    object qCheqIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object qCheqCELU: TWideStringField
      FieldName = 'CELU'
      EditMask = '(##) #########;0;_'
    end
    object qCheqRECADO: TWideStringField
      FieldName = 'RECADO'
      EditMask = '(##) #########;0;_'
    end
    object qCheqMOTDEV1: TWideStringField
      FieldName = 'MOTDEV1'
      Size = 10
    end
    object qCheqMOTDEV2: TWideStringField
      FieldName = 'MOTDEV2'
      Size = 10
    end
    object qCheqOBS: TWideMemoField
      FieldName = 'OBS'
      BlobType = ftWideMemo
    end
    object qCheqidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qCheqEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      EditMask = '!99/99/9900;1;_'
    end
    object qCheqVENCI: TDateTimeField
      FieldName = 'VENCI'
      EditMask = '!99/99/9900;1;_'
    end
    object qCheqDTOPERACAO: TDateTimeField
      FieldName = 'DTOPERACAO'
    end
    object qCheqDTDEV1: TDateTimeField
      FieldName = 'DTDEV1'
    end
    object qCheqDTDEV2: TDateTimeField
      FieldName = 'DTDEV2'
    end
  end
  object uCheq: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cheques'
      'WHERE'
      
        '  ((cheques.Id IS NULL AND :OLD_Id IS NULL) OR (cheques.Id = :OL' +
        'D_Id))')
    InsertSQL.Strings = (
      'INSERT INTO cheques'
      
        '  (BANCO, IDCLIENTE, NUMERO, EMISSAO, VENCI, AGENCIA, CONTA, VAL' +
        'OR, EMITENTE, '
      
        '   CODEMP, CODVENDA, DEVOLVIDO, CODFINAN, TIPO, ST, IDMOVCAIXA, ' +
        'STANTERIOR, '
      
        '   CONTAANTERIOR, X, IDCONTA, CPF, TEL, DTOPERACAO, EX, IDUSU, C' +
        'ELU, RECADO, '
      '   DTDEV1, DTDEV2, MOTDEV1, MOTDEV2, OBS, idemp)'
      'VALUES'
      
        '  (:BANCO, :IDCLIENTE, :NUMERO, :EMISSAO, :VENCI, :AGENCIA, :CON' +
        'TA, :VALOR, '
      
        '   :EMITENTE, :CODEMP, :CODVENDA, :DEVOLVIDO, :CODFINAN, :TIPO, ' +
        ':ST, :IDMOVCAIXA, '
      
        '   :STANTERIOR, :CONTAANTERIOR, :X, :IDCONTA, :CPF, :TEL, :DTOPE' +
        'RACAO, '
      
        '   :EX, :IDUSU, :CELU, :RECADO, :DTDEV1, :DTDEV2, :MOTDEV1, :MOT' +
        'DEV2, :OBS, '
      '   :idemp)')
    ModifySQL.Strings = (
      'UPDATE cheques SET'
      '  BANCO = :BANCO,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  NUMERO = :NUMERO,'
      '  EMISSAO = :EMISSAO,'
      '  VENCI = :VENCI,'
      '  AGENCIA = :AGENCIA,'
      '  CONTA = :CONTA,'
      '  VALOR = :VALOR,'
      '  EMITENTE = :EMITENTE,'
      '  CODEMP = :CODEMP,'
      '  CODVENDA = :CODVENDA,'
      '  DEVOLVIDO = :DEVOLVIDO,'
      '  CODFINAN = :CODFINAN,'
      '  TIPO = :TIPO,'
      '  ST = :ST,'
      '  IDMOVCAIXA = :IDMOVCAIXA,'
      '  STANTERIOR = :STANTERIOR,'
      '  CONTAANTERIOR = :CONTAANTERIOR,'
      '  X = :X,'
      '  IDCONTA = :IDCONTA,'
      '  CPF = :CPF,'
      '  TEL = :TEL,'
      '  DTOPERACAO = :DTOPERACAO,'
      '  EX = :EX,'
      '  IDUSU = :IDUSU,'
      '  CELU = :CELU,'
      '  RECADO = :RECADO,'
      '  DTDEV1 = :DTDEV1,'
      '  DTDEV2 = :DTDEV2,'
      '  MOTDEV1 = :MOTDEV1,'
      '  MOTDEV2 = :MOTDEV2,'
      '  OBS = :OBS,'
      '  idemp = :idemp'
      'WHERE'
      
        '  ((cheques.Id IS NULL AND :OLD_Id IS NULL) OR (cheques.Id = :OL' +
        'D_Id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 264
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMISSAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENCI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AGENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMITENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEVOLVIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFINAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMOVCAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STANTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTAANTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'X'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTOPERACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTDEV1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTDEV2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOTDEV1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOTDEV2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dCheq: TDataSource
    DataSet = qCheq
    Left = 295
    Top = 376
  end
  object qVend: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select id, nome, comissao'
      'from vendedor'
      'where ex = 0 and ativo = '#39'S'#39
      'order by nome')
    Params = <>
    Left = 376
    Top = 244
    object qVendid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qVendnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object qVendcomissao: TFloatField
      FieldName = 'comissao'
      DisplayFormat = '#0.00'
    end
  end
  object dVend: TDataSource
    DataSet = qVend
    Left = 415
    Top = 244
  end
  object CPag: TZQuery
    Connection = Conex
    UpdateObject = UPag
    OnNewRecord = CPagNewRecord
    SQL.Strings = (
      'select * from CPAGAR'
      'where id = 0')
    Params = <>
    Left = 216
    Top = 432
    object CPagId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object CPagEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object CPagIdFornecedor: TIntegerField
      FieldName = 'IdFornecedor'
    end
    object CPagDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object CPagVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object CPagValor: TFloatField
      FieldName = 'Valor'
    end
    object CPagBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object CPagidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object CPagDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object CPagValPago: TFloatField
      FieldName = 'ValPago'
    end
    object CPagidSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object CPagIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object CPagEx: TIntegerField
      FieldName = 'Ex'
    end
    object CPagidOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object CPagValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
    end
    object CPagValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
    end
    object CPagidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object CPagobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object CPagTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object CPagx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object CPagIdCompra: TIntegerField
      FieldName = 'IdCompra'
    end
    object CPagFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object CPagFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object CPagjuros: TFloatField
      FieldName = 'juros'
    end
    object CPagdesconto: TFloatField
      FieldName = 'desconto'
    end
    object CPagtotal: TFloatField
      FieldName = 'total'
    end
    object CPagidcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object CPagidnf: TIntegerField
      FieldName = 'idnf'
    end
    object CPagidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object CPagped_nota: TIntegerField
      FieldName = 'ped_nota'
    end
    object CPagdoc_bx_parcial: TWideStringField
      FieldName = 'doc_bx_parcial'
    end
    object CPagtipoFinan: TWideStringField
      FieldName = 'tipoFinan'
      Required = True
      Size = 1
    end
  end
  object UPag: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CPAGAR'
      'WHERE'
      '  CPAGAR.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO CPAGAR'
      
        '  (Id, Emissao, IdFornecedor, Documento, Venci, Valor, Baixa, id' +
        'Baixa, '
      
        '   DtPagto, ValPago, idSubOP_P, IdUsuario, Ex, idOP_M, Valorfpgt' +
        'o, Valorfpgto2, '
      
        '   idcondpgto, obs, Tipo, x, IdCompra, Fpgto, Fpgto2, juros, des' +
        'conto, '
      
        '   total, idcusto, idnf, idemp, ped_nota, doc_bx_parcial, tipoFi' +
        'nan)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdFornecedor, :Documento, :Venci, :Valor, :Ba' +
        'ixa, :idBaixa, '
      
        '   :DtPagto, :ValPago, :idSubOP_P, :IdUsuario, :Ex, :idOP_M, :Va' +
        'lorfpgto, '
      
        '   :Valorfpgto2, :idcondpgto, :obs, :Tipo, :x, :IdCompra, :Fpgto' +
        ', :Fpgto2, '
      
        '   :juros, :desconto, :total, :idcusto, :idnf, :idemp, :ped_nota' +
        ', :doc_bx_parcial, '
      '   :tipoFinan)')
    ModifySQL.Strings = (
      'UPDATE CPAGAR SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdFornecedor = :IdFornecedor,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  idSubOP_P = :idSubOP_P,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  idOP_M = :idOP_M,'
      '  Valorfpgto = :Valorfpgto,'
      '  Valorfpgto2 = :Valorfpgto2,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  x = :x,'
      '  IdCompra = :IdCompra,'
      '  Fpgto = :Fpgto,'
      '  Fpgto2 = :Fpgto2,'
      '  juros = :juros,'
      '  desconto = :desconto,'
      '  total = :total,'
      '  idcusto = :idcusto,'
      '  idnf = :idnf,'
      '  idemp = :idemp,'
      '  ped_nota = :ped_nota,'
      '  doc_bx_parcial = :doc_bx_parcial,'
      '  tipoFinan = :tipoFinan'
      'WHERE'
      '  CPAGAR.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idSubOP_P'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idOP_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ped_nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'doc_bx_parcial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoFinan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dPag: TDataSource
    DataSet = CPag
    Left = 295
    Top = 432
  end
  object LogVenda: TZTable
    Connection = Conex
    TableName = 'log_venda'
    Left = 376
    Top = 405
    object LogVendaid: TIntegerField
      FieldName = 'id'
    end
    object LogVendaidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object LogVendaidvenda: TIntegerField
      FieldName = 'idvenda'
    end
    object LogVendaidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object LogVendastatus: TWideStringField
      FieldName = 'status'
      Size = 100
    end
    object LogVendaacao: TWideStringField
      FieldName = 'acao'
      Size = 200
    end
    object LogVendadt: TWideStringField
      FieldName = 'dt'
    end
    object LogVendahora: TWideStringField
      FieldName = 'hora'
      Size = 32
    end
    object LogVendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
  end
  object qComiPagar: TZQuery
    Connection = Conex
    UpdateObject = uComiPagar
    OnNewRecord = qComiPagarNewRecord
    SQL.Strings = (
      'select '
      ' cp.*,  '
      ' centrocusto.descricao,'
      ' cliente.nome'
      'from Comi_Pagar cp'
      'left join centrocusto on centrocusto.id = cp.idcusto'
      'left join venda on venda.id = cp.idvenda'
      'left join cliente on cliente.id = venda.idcliente'
      'where cp.id = 0')
    Params = <>
    Left = 216
    Top = 211
    object qComiPagarId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qComiPagarEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qComiPagarIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qComiPagarDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object qComiPagarVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object qComiPagarValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagarBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qComiPagaridBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qComiPagarDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qComiPagarValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagaridSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qComiPagarIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qComiPagarEx: TIntegerField
      FieldName = 'Ex'
    end
    object qComiPagaridOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qComiPagarValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagarValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagaridcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qComiPagarobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qComiPagarTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qComiPagarx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qComiPagarIdVenda: TIntegerField
      FieldName = 'IdVenda'
    end
    object qComiPagarFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qComiPagarFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qComiPagarjuros: TFloatField
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagardesconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagartotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,##0.00'
    end
    object qComiPagaridcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qComiPagaridnf: TIntegerField
      FieldName = 'idnf'
    end
    object qComiPagardescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qComiPagaridemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qComiPagarnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qComiPagarsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qComiPagarbasecalculo: TFloatField
      FieldName = 'basecalculo'
    end
    object qComiPagarpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qComiPagaridcreceber: TIntegerField
      FieldName = 'idcreceber'
    end
  end
  object uComiPagar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Comi_Pagar'
      'WHERE'
      '  Comi_Pagar.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO Comi_Pagar'
      
        '  (Id, Emissao, IdVendedor, Documento, Venci, Valor, Baixa, idBa' +
        'ixa, DtPagto, '
      
        '   ValPago, idSubOP_P, IdUsuario, Ex, idOP_M, Valorfpgto, Valorf' +
        'pgto2, '
      
        '   idcondpgto, obs, Tipo, x, IdVenda, Fpgto, Fpgto2, juros, desc' +
        'onto, total, '
      
        '   idcusto, idnf, idemp, sincronizado, basecalculo, pComissao, i' +
        'dcreceber)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdVendedor, :Documento, :Venci, :Valor, :Baix' +
        'a, :idBaixa, '
      
        '   :DtPagto, :ValPago, :idSubOP_P, :IdUsuario, :Ex, :idOP_M, :Va' +
        'lorfpgto, '
      
        '   :Valorfpgto2, :idcondpgto, :obs, :Tipo, :x, :IdVenda, :Fpgto,' +
        ' :Fpgto2, '
      
        '   :juros, :desconto, :total, :idcusto, :idnf, :idemp, :sincroni' +
        'zado, :basecalculo, '
      '   :pComissao, :idcreceber)')
    ModifySQL.Strings = (
      'UPDATE Comi_Pagar SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdVendedor = :IdVendedor,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  idSubOP_P = :idSubOP_P,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  idOP_M = :idOP_M,'
      '  Valorfpgto = :Valorfpgto,'
      '  Valorfpgto2 = :Valorfpgto2,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  x = :x,'
      '  IdVenda = :IdVenda,'
      '  Fpgto = :Fpgto,'
      '  Fpgto2 = :Fpgto2,'
      '  juros = :juros,'
      '  desconto = :desconto,'
      '  total = :total,'
      '  idcusto = :idcusto,'
      '  idnf = :idnf,'
      '  idemp = :idemp,'
      '  sincronizado = :sincronizado,'
      '  basecalculo = :basecalculo,'
      '  pComissao = :pComissao,'
      '  idcreceber = :idcreceber'
      'WHERE'
      '  Comi_Pagar.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdVendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSubOp_P'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idOP_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'basecalculo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pComissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcreceber'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dComiPagar: TDataSource
    DataSet = qComiPagar
    Left = 295
    Top = 211
  end
  object ConexWeb: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = '192.168.1.112'
    Port = 3306
    Database = 'PlasticosWeb_teste'
    User = 'thr'
    Password = 'ThR060607'
    Protocol = 'mssql'
    Left = 768
    Top = 23
  end
  object qRepWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      
        'select id, idempresa, idrep, nome, senha, status, email, cnpj, p' +
        'comissao'
      'from representante'
      'where idempresa = :emp'
      'order by idempresa, idrep')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 672
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qRepWebidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object qRepWebidrep: TIntegerField
      FieldName = 'idrep'
    end
    object qRepWebnome: TWideStringField
      FieldName = 'nome'
      Size = 160
    end
    object qRepWebsenha: TWideStringField
      FieldName = 'senha'
      Size = 40
    end
    object qRepWebstatus: TWideStringField
      FieldName = 'status'
      Size = 2
    end
    object qRepWebemail: TWideStringField
      FieldName = 'email'
      Size = 200
    end
    object qRepWebid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qRepWebcnpj: TWideStringField
      FieldName = 'cnpj'
      ReadOnly = True
      Size = 40
    end
    object qRepWebpcomissao: TFloatField
      FieldName = 'pcomissao'
    end
  end
  object qRep: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from vendedor'
      'where sincronizado = '#39'N'#39' and coalesce(cnpj,'#39#39') <> '#39#39)
    Params = <>
    Left = 717
    Top = 91
    object qRepID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRepNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qRepENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qRepBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qRepCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qRepCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qRepUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qReptel1: TWideStringField
      FieldName = 'tel1'
    end
    object qReptel2: TWideStringField
      FieldName = 'tel2'
    end
    object qRepfax: TWideStringField
      FieldName = 'fax'
    end
    object qRepCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object qRepEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qRepIE: TWideStringField
      FieldName = 'IE'
    end
    object qRepCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object qRepCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qRepAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qRepBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object qRepTIPOPAGTO: TIntegerField
      FieldName = 'TIPOPAGTO'
    end
    object qRepOBS: TWideStringField
      FieldName = 'OBS'
      Size = 255
    end
    object qRepEX: TIntegerField
      FieldName = 'EX'
    end
    object qRepSITE: TWideStringField
      FieldName = 'SITE'
      Size = 100
    end
    object qRepTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object qRepfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
    object qRepnum: TWideStringField
      FieldName = 'num'
    end
    object qRepidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object qRepdia_venci: TIntegerField
      FieldName = 'dia_venci'
    end
    object qRepComissao: TFloatField
      FieldName = 'Comissao'
    end
    object qReppais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qRepsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qRepidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qReppermite_web: TWideStringField
      FieldName = 'permite_web'
      Size = 1
    end
  end
  object qExecWeb: TZQuery
    Connection = ConexWeb
    Params = <>
    Left = 886
    Top = 33
  end
  object qTabWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select *'
      'from emp_tabela'
      'where '
      '    idempresa = :emp and  ex = 0')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 672
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qTabWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qTabWebIdTabela: TIntegerField
      FieldName = 'IdTabela'
    end
    object qTabWebIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object qTabWebex: TIntegerField
      FieldName = 'ex'
    end
  end
  object qTabIweb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select * '
      'from tabela_i'
      'where idtabela = :idtab')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idtab'
        ParamType = ptUnknown
      end>
    Left = 674
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idtab'
        ParamType = ptUnknown
      end>
    object qTabIwebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qTabIwebIdTabela: TIntegerField
      FieldName = 'IdTabela'
      Required = True
    end
    object qTabIwebReferencia: TWideStringField
      FieldName = 'Referencia'
      Size = 26
    end
    object qTabIwebCodBarras: TWideStringField
      FieldName = 'CodBarras'
      Size = 26
    end
    object qTabIwebDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 160
    end
    object qTabIwebPreco: TFloatField
      FieldName = 'Preco'
    end
    object qTabIwebQtdeEstoque: TFloatField
      FieldName = 'QtdeEstoque'
    end
    object qTabIwebPagina: TIntegerField
      FieldName = 'Pagina'
    end
    object qTabIwebex: TIntegerField
      FieldName = 'ex'
    end
    object qTabIwebQtdeCaixa: TFloatField
      FieldName = 'QtdeCaixa'
    end
    object qTabIwebidproduto: TIntegerField
      FieldName = 'idproduto'
    end
  end
  object qTab: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select *'
      'from tabela'
      'where '
      '   sincronizado = '#39'N'#39' and padrao = '#39'N'#39)
    Params = <>
    Left = 718
    Top = 148
    object qTabDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qTabex: TIntegerField
      FieldName = 'ex'
    end
    object qTabsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qTabidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qTabId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qTabativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
  end
  object qTabI: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select coalesce(grupo.IDWEB,0) idgrupoWeb, tabela_i.* '
      'from tabela_i'
      'left join produto on produto.id = tabela_i.idproduto'
      'left join grupo on grupo.id = produto.idgrupo'
      'where idtabela = :idtab and tabela_i.sincronizado = '#39'N'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'idtab'
        ParamType = ptUnknown
      end>
    Left = 763
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idtab'
        ParamType = ptUnknown
      end>
    object qTabIId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qTabIIdTabela: TIntegerField
      FieldName = 'IdTabela'
      Required = True
    end
    object qTabIIdProduto: TIntegerField
      FieldName = 'IdProduto'
      Required = True
    end
    object qTabIReferencia: TWideStringField
      FieldName = 'Referencia'
      Size = 13
    end
    object qTabICodBarras: TWideStringField
      FieldName = 'CodBarras'
      Size = 13
    end
    object qTabIDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object qTabIPreco: TFloatField
      FieldName = 'Preco'
    end
    object qTabIQtdeEstoque: TFloatField
      FieldName = 'QtdeEstoque'
    end
    object qTabIPagina: TIntegerField
      FieldName = 'Pagina'
    end
    object qTabIex: TIntegerField
      FieldName = 'ex'
    end
    object qTabIQtdeCaixa: TFloatField
      FieldName = 'QtdeCaixa'
    end
    object qTabIsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qTabIidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qTabIidgrupoWeb: TIntegerField
      FieldName = 'idgrupoWeb'
      ReadOnly = True
    end
  end
  object qTab2: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select *'
      'from tabela'
      'where '
      '   padrao = '#39'N'#39' and   idweb > 0')
    Params = <>
    Left = 720
    Top = 196
    object qTab2Id: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qTab2Descricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qTab2ex: TIntegerField
      FieldName = 'ex'
    end
    object qTab2sincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qTab2idweb: TIntegerField
      FieldName = 'idweb'
    end
    object qTab2ativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
  end
  object qCliWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select * from cliente'
      'where idempresa = :emp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 672
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qCliWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCliWebIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
      Required = True
    end
    object qCliWebIdRepresentante: TIntegerField
      FieldName = 'IdRepresentante'
      Required = True
    end
    object qCliWebNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qCliWebEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qCliWebNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qCliWebBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qCliWebCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qCliWebCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qCliWebUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCliWebEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object qCliWebRG: TWideStringField
      FieldName = 'RG'
    end
    object qCliWebCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qCliWebDtNasc: TDateTimeField
      FieldName = 'DtNasc'
    end
    object qCliWebDtCadastro: TDateTimeField
      FieldName = 'DtCadastro'
    end
    object qCliWebTel1: TWideStringField
      FieldName = 'Tel1'
    end
    object qCliWebTel2: TWideStringField
      FieldName = 'Tel2'
    end
    object qCliWebTel3: TWideStringField
      FieldName = 'Tel3'
    end
    object qCliWebObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object qCliWebex: TIntegerField
      FieldName = 'ex'
    end
    object qCliWebLimiteCredito: TFloatField
      FieldName = 'LimiteCredito'
    end
    object qCliWebIdCidade: TIntegerField
      FieldName = 'IdCidade'
    end
    object qCliWebTpPessoa: TWideStringField
      FieldName = 'TpPessoa'
      Size = 1
    end
    object qCliWebRazao: TWideStringField
      FieldName = 'Razao'
      Size = 100
    end
    object qCliWebComple: TWideStringField
      FieldName = 'Comple'
      Size = 80
    end
    object qCliWebEnd_Entrega: TWideStringField
      FieldName = 'End_Entrega'
      Size = 50
    end
    object qCliWebNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qCliWebBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qCliWebCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qCliWebidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qCliWebUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qCliWebComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qCliWebativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qCliWebpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qCliWebpais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qCliWebcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qCliWebprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qCliWebidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qCliWebdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qCliWebinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qCliWebsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCliWebCidade_entrega: TWideStringField
      FieldName = 'Cidade_entrega'
      Size = 50
    end
    object qCliWebidlocal: TIntegerField
      FieldName = 'idlocal'
    end
  end
  object qCli: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  coalesce(tabela.idweb,0) idtabela, cliente.*'
      'from cliente'
      
        'inner join vendedor on vendedor.id = cliente.idvendedor and coal' +
        'esce(vendedor.cnpj,'#39#39') <> '#39#39
      'left join tabela on tabela.id = cliente.idtabela'
      'where '
      
        '   coalesce(cliente.idvendedor,0) > 0 and  cliente.sincronizado ' +
        '= '#39'N'#39)
    Params = <>
    Left = 717
    Top = 259
    object qCliId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCliNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qCliEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qCliNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qCliBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qCliCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qCliCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qCliUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCliemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qClirg: TWideStringField
      FieldName = 'rg'
    end
    object qClicpf: TWideStringField
      FieldName = 'cpf'
    end
    object qClidtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
    object qClidtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
    end
    object qClitel1: TWideStringField
      FieldName = 'tel1'
    end
    object qClitel2: TWideStringField
      FieldName = 'tel2'
    end
    object qClitel3: TWideStringField
      FieldName = 'tel3'
    end
    object qCliobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qCliex: TIntegerField
      FieldName = 'ex'
    end
    object qClilimiteCredito: TFloatField
      FieldName = 'limiteCredito'
    end
    object qCliidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object qClitppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object qClirazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object qClicomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object qCliEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object qCliNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qCliBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qCliCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qCliidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qCliUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qCliComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qCliativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qClipais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qClipais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qClicontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qCliprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qCliidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qClidia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qCliinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qCliimagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object qCliidvendedor: TIntegerField
      FieldName = 'idvendedor'
    end
    object qCliidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qClisincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qClicidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
  end
  object qCliDesceW: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select * from cliente'
      'where idempresa = :emp'
      ' and sincronizado = '#39'N'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 880
    Top = 83
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qCliDesceWId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCliDesceWIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
      Required = True
    end
    object qCliDesceWIdRepresentante: TIntegerField
      FieldName = 'IdRepresentante'
      Required = True
    end
    object qCliDesceWNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qCliDesceWEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qCliDesceWNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qCliDesceWBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qCliDesceWCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qCliDesceWCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qCliDesceWUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCliDesceWEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object qCliDesceWRG: TWideStringField
      FieldName = 'RG'
    end
    object qCliDesceWCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qCliDesceWDtNasc: TDateTimeField
      FieldName = 'DtNasc'
    end
    object qCliDesceWDtCadastro: TDateTimeField
      FieldName = 'DtCadastro'
    end
    object qCliDesceWTel1: TWideStringField
      FieldName = 'Tel1'
    end
    object qCliDesceWTel2: TWideStringField
      FieldName = 'Tel2'
    end
    object qCliDesceWTel3: TWideStringField
      FieldName = 'Tel3'
    end
    object qCliDesceWObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object qCliDesceWex: TIntegerField
      FieldName = 'ex'
    end
    object qCliDesceWLimiteCredito: TFloatField
      FieldName = 'LimiteCredito'
    end
    object qCliDesceWIdCidade: TIntegerField
      FieldName = 'IdCidade'
    end
    object qCliDesceWTpPessoa: TWideStringField
      FieldName = 'TpPessoa'
      Size = 1
    end
    object qCliDesceWRazao: TWideStringField
      FieldName = 'Razao'
      Size = 100
    end
    object qCliDesceWComple: TWideStringField
      FieldName = 'Comple'
      Size = 80
    end
    object qCliDesceWEnd_Entrega: TWideStringField
      FieldName = 'End_Entrega'
      Size = 50
    end
    object qCliDesceWNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qCliDesceWBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qCliDesceWCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qCliDesceWidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qCliDesceWUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qCliDesceWComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qCliDesceWativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qCliDesceWpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qCliDesceWpais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qCliDesceWcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qCliDesceWprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qCliDesceWidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qCliDesceWdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qCliDesceWinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qCliDesceWsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCliDesceWCidade_entrega: TWideStringField
      FieldName = 'Cidade_entrega'
      Size = 50
    end
  end
  object qCliDesce: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from cliente'
      'order by id'
      '')
    Params = <>
    Left = 936
    Top = 83
    object qCliDesceId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCliDesceNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qCliDesceEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qCliDesceNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qCliDesceBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qCliDesceCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qCliDesceCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qCliDesceUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCliDesceemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qCliDescerg: TWideStringField
      FieldName = 'rg'
    end
    object qCliDescecpf: TWideStringField
      FieldName = 'cpf'
    end
    object qCliDescedtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
    object qCliDescedtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
    end
    object qCliDescetel1: TWideStringField
      FieldName = 'tel1'
    end
    object qCliDescetel2: TWideStringField
      FieldName = 'tel2'
    end
    object qCliDescetel3: TWideStringField
      FieldName = 'tel3'
    end
    object qCliDesceobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qCliDesceex: TIntegerField
      FieldName = 'ex'
    end
    object qCliDescelimiteCredito: TFloatField
      FieldName = 'limiteCredito'
    end
    object qCliDesceidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object qCliDescetppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object qCliDescerazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object qCliDescecomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object qCliDesceEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object qCliDesceNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qCliDesceBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qCliDesceCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qCliDesceidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qCliDesceUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qCliDesceComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qCliDesceativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qCliDescepais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qCliDescepais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qCliDescecontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qCliDesceprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qCliDesceidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qCliDescedia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qCliDesceinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qCliDesceimagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object qCliDesceidvendedor: TIntegerField
      FieldName = 'idvendedor'
    end
    object qCliDesceidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qCliDescesincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCliDescecidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
  end
  object qCondWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select *'
      'from cond_pgto'
      'where idempresa = :emp'
      'order by idempresa, id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 672
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qCondWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCondWebIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
      Required = True
    end
    object qCondWebDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qCondWebEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
  end
  object qCond: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from cond_pgto'
      'where sincronizado = '#39'N'#39' ')
    Params = <>
    Left = 717
    Top = 323
    object qCondId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCondDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qCondsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCondidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qCondex: TIntegerField
      FieldName = 'ex'
      ReadOnly = True
    end
  end
  object qVendaWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select venda.*, cliente.nome, re.idrep idrep_local'
      'from venda'
      'left join cliente on cliente.id = venda.idcliente'
      'left join representante re on re.id = venda.idrepresentante'
      'where venda.idempresa = :emp and venda.status = '#39'E'#39
      'order by venda.idempresa, venda.id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 880
    Top = 139
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qVendaWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qVendaWebData: TDateTimeField
      FieldName = 'Data'
    end
    object qVendaWebIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object qVendaWebIdRepresentante: TIntegerField
      FieldName = 'IdRepresentante'
    end
    object qVendaWebIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qVendaWebIdCondPgto: TIntegerField
      FieldName = 'IdCondPgto'
    end
    object qVendaWebValor: TFloatField
      FieldName = 'Valor'
    end
    object qVendaWebDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qVendaWebTotal: TFloatField
      FieldName = 'Total'
    end
    object qVendaWebPrazoEntrega: TWideStringField
      FieldName = 'PrazoEntrega'
      Size = 100
    end
    object qVendaWebNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object qVendaWebx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object qVendaWebEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object qVendaWebExpedido: TWideStringField
      FieldName = 'Expedido'
      Size = 1
    end
    object qVendaWebGeradoNFe: TWideStringField
      FieldName = 'GeradoNFe'
      Size = 1
    end
    object qVendaWebpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qVendaWebObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object qVendaWebboleto: TWideStringField
      FieldName = 'boleto'
      Required = True
      Size = 1
    end
    object qVendaWebpacote: TWideStringField
      FieldName = 'pacote'
      Size = 50
    end
    object qVendaWebtotcubagem: TFloatField
      FieldName = 'totcubagem'
    end
    object qVendaWebdesc_especial: TFloatField
      FieldName = 'desc_especial'
    end
    object qVendaWebIdTabela: TIntegerField
      FieldName = 'IdTabela'
      Required = True
    end
    object qVendaWebStatus: TWideStringField
      FieldName = 'Status'
      Size = 1
    end
    object qVendaWebnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qVendaWebidrep_local: TIntegerField
      FieldName = 'idrep_local'
    end
    object qVendaWebIdComercial: TIntegerField
      FieldName = 'IdComercial'
    end
    object qVendaWebTipoFrete: TWideStringField
      FieldName = 'TipoFrete'
      Size = 3
    end
    object qVendaWebTransportadora: TWideStringField
      FieldName = 'Transportadora'
      Size = 150
    end
    object qVendaWebMotivo: TWideMemoField
      FieldName = 'Motivo'
      BlobType = ftWideMemo
    end
    object qVendaWebvalorComissao: TFloatField
      FieldName = 'valorComissao'
    end
    object qVendaWebstFinan: TWideStringField
      FieldName = 'stFinan'
      Size = 100
    end
    object qVendaWebvalorFinan: TFloatField
      FieldName = 'valorFinan'
    end
    object qVendaWebTelTransportadora: TWideStringField
      FieldName = 'TelTransportadora'
    end
    object qVendaWebNumero: TIntegerField
      FieldName = 'Numero'
    end
    object qVendaWebSerie: TWideStringField
      FieldName = 'Serie'
      Size = 10
    end
    object qVendaWebEmissaoNota: TDateTimeField
      FieldName = 'EmissaoNota'
    end
    object qVendaWebValorNota: TFloatField
      FieldName = 'ValorNota'
    end
    object qVendaWebLinhaDigitavel: TWideStringField
      FieldName = 'LinhaDigitavel'
      Size = 50
    end
    object qVendaWebLinkBoleto: TWideStringField
      FieldName = 'LinkBoleto'
      Size = 100
    end
    object qVendaWebLinkDanfe: TWideStringField
      FieldName = 'LinkDanfe'
      ReadOnly = True
      Size = 100
    end
  end
  object qItensWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select venda_i.*, tabela_i.descricao'
      'from venda_i'
      'left join venda on venda.id = venda_i.idvenda'
      
        'left join tabela_i on tabela_i.idtabela = venda.idtabela and tab' +
        'ela_i.idproduto = venda_i.idproduto'
      'where venda_i.idvenda = :idv'
      'order by venda_i.id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idv'
        ParamType = ptUnknown
      end>
    Left = 880
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idv'
        ParamType = ptUnknown
      end>
    object qItensWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qItensWebIdVenda: TIntegerField
      FieldName = 'IdVenda'
      Required = True
    end
    object qItensWebIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qItensWebReferencia: TWideStringField
      FieldName = 'Referencia'
      Size = 26
    end
    object qItensWebIdTabela: TIntegerField
      FieldName = 'IdTabela'
    end
    object qItensWebTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qItensWebQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qItensWebUnit: TFloatField
      FieldName = 'Unit'
    end
    object qItensWebDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qItensWebTotal: TFloatField
      FieldName = 'Total'
    end
    object qItensWebx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object qItensWebRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object qItensWebunit2: TFloatField
      FieldName = 'unit2'
    end
    object qItensWebunitst: TFloatField
      FieldName = 'unitst'
    end
    object qItensWebpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qItensWebordemcompra: TWideStringField
      FieldName = 'ordemcompra'
    end
    object qItensWebcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object qItensWebqtd_cx: TFloatField
      FieldName = 'qtd_cx'
    end
    object qItensWebdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 160
    end
    object qItensWebQtd_itens: TFloatField
      FieldName = 'Qtd_itens'
    end
  end
  object qVenda: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  venda.*, cliente.nome'
      'from venda'
      'left join cliente on cliente.id =  venda.idcliente ')
    Params = <>
    Left = 936
    Top = 139
    object qVendaId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qVendaData: TDateTimeField
      FieldName = 'Data'
    end
    object qVendaIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qVendaIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qVendaIdCondPgto: TIntegerField
      FieldName = 'IdCondPgto'
    end
    object qVendaValor: TFloatField
      FieldName = 'Valor'
    end
    object qVendaDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qVendaTotal: TFloatField
      FieldName = 'Total'
    end
    object qVendaPrazoEntrega: TWideStringField
      FieldName = 'PrazoEntrega'
      Size = 100
    end
    object qVendaNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object qVendaIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qVendax: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object qVendaEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object qVendaExpedido: TWideStringField
      FieldName = 'Expedido'
      Size = 1
    end
    object qVendaGeradoNFe: TWideStringField
      FieldName = 'GeradoNFe'
      Size = 1
    end
    object qVendapComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qVendaObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object qVendaboleto: TWideStringField
      FieldName = 'boleto'
      Required = True
      Size = 1
    end
    object qVendapacote: TWideStringField
      FieldName = 'pacote'
      Size = 50
    end
    object qVendatotcubagem: TFloatField
      FieldName = 'totcubagem'
    end
    object qVendadesc_especial: TFloatField
      FieldName = 'desc_especial'
    end
    object qVendaidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qVendastatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object qVendasincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qVendanome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qVendaidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qVendaidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object qVendaidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qVendaidorc: TIntegerField
      FieldName = 'idorc'
    end
    object qVendaidUserR: TIntegerField
      FieldName = 'idUserR'
      ReadOnly = True
    end
    object qVendatipoFrete: TWideStringField
      FieldName = 'tipoFrete'
      ReadOnly = True
      Size = 3
    end
    object qVendatransp_vendedor: TWideStringField
      FieldName = 'transp_vendedor'
      Size = 150
    end
    object qVendamotivoR: TWideStringField
      FieldName = 'motivoR'
      Size = 255
    end
    object qVendaDataR: TDateTimeField
      FieldName = 'DataR'
    end
    object qVendaidtransp: TIntegerField
      FieldName = 'idtransp'
    end
    object qVendaforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object qVendatelTransp: TWideStringField
      FieldName = 'telTransp'
    end
    object qVendapDesconto: TFloatField
      FieldName = 'pDesconto'
    end
    object qVendaidcondpgto2: TIntegerField
      FieldName = 'idcondpgto2'
    end
    object qVendaidtranspotadora: TIntegerField
      FieldName = 'idtranspotadora'
    end
    object qVendafoma_pgto2: TWideStringField
      FieldName = 'foma_pgto2'
      Size = 100
    end
    object qVendaLinhaDigitavel: TWideStringField
      FieldName = 'LinhaDigitavel'
      Size = 50
    end
    object qVendaLinkBoleto: TWideStringField
      FieldName = 'LinkBoleto'
      Size = 100
    end
    object qVendaLinkDanfe: TWideStringField
      FieldName = 'LinkDanfe'
      ReadOnly = True
      Size = 100
    end
  end
  object qItens: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select venda_i.*'
      'from venda_i'
      'where venda_i.idvenda = :idv'
      'order by venda_i.id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idv'
        ParamType = ptUnknown
      end>
    Left = 936
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idv'
        ParamType = ptUnknown
      end>
    object qItensId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qItensIdVenda: TIntegerField
      FieldName = 'IdVenda'
      Required = True
    end
    object qItensIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qItensTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qItensUnit: TFloatField
      FieldName = 'Unit'
    end
    object qItensDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qItensTotal: TFloatField
      FieldName = 'Total'
    end
    object qItensx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object qItensRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object qItensunit2: TFloatField
      FieldName = 'unit2'
    end
    object qItensunitst: TFloatField
      FieldName = 'unitst'
    end
    object qItenspComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qItensordemcompra: TWideStringField
      FieldName = 'ordemcompra'
    end
    object qItenscubagem: TFloatField
      FieldName = 'cubagem'
    end
    object qItensqtd_cx: TFloatField
      FieldName = 'qtd_cx'
    end
    object qItenssincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qItensidWeb: TIntegerField
      FieldName = 'idWeb'
    end
  end
  object qCialWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select *'
      'from comercial'
      'where idempresa = :emp'
      'order by idempresa, id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 672
    Top = 387
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qCialWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCialWebDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 13
    end
    object qCialWebPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object qCialWebIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object qCialWebex: TIntegerField
      FieldName = 'ex'
      ReadOnly = True
    end
  end
  object qCial: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from comercial'
      'where sincronizado = '#39'N'#39' ')
    Params = <>
    Left = 717
    Top = 387
    object qCialId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCialDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qCialPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object qCialsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCialidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qCialex: TIntegerField
      FieldName = 'ex'
    end
  end
  object qVen: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select  venda.id, venda.status, venda.idweb, venda.motivor, vend' +
        'a.pcomissao,'
      ' venda.linhadigitavel, venda.linkboleto, venda.linkdanfe'
      'from venda'
      'where coalesce(notafiscal,0) = 0 and '
      
        '  sincronizado = '#39'N'#39' and  coalesce(idweb,0) > 0 and status <> '#39'D' +
        #39)
    Params = <>
    Left = 672
    Top = 443
    object qVenid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qVenstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object qVenidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qVenmotivor: TWideStringField
      FieldName = 'motivor'
      Size = 255
    end
    object qVenpcomissao: TFloatField
      FieldName = 'pcomissao'
    end
    object qVenlinhadigitavel: TWideStringField
      FieldName = 'linhadigitavel'
      Size = 50
    end
    object qVenlinkboleto: TWideStringField
      FieldName = 'linkboleto'
      Size = 100
    end
    object qVenlinkdanfe: TWideStringField
      FieldName = 'linkdanfe'
      Size = 100
    end
  end
  object dRelComiPagar: TDataSource
    DataSet = qRelComiPagar
    Left = 574
    Top = 385
  end
  object qRelComiPagar: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      'case when p.mod_pedidosweb = '#39'S'#39' then '
      '        venda.idweb '
      '   else '
      '       comi_pagar.idvenda '
      'end idvenda,'
      
        'convert(varchar, emissao, 103) emissao1, convert(varchar, venci,' +
        ' 103) venci1,'
      'comi_pagar.*, '
      'vendedor.nome, cliente.nome nomeCli, venda.dtexpedicao'
      'from comi_pagar '
      'inner join vendedor on vendedor.id = comi_pagar.idvendedor'
      'left join venda on venda.id = comi_pagar.idvenda'
      'left join cliente on cliente.id = venda.idcliente'
      'left join parametro p on p.id = 1'
      ''
      
        'where ((:dt = 0) or (cast(comi_pagar.venci as date) between :dti' +
        'ni and :dtfim))  and'
      '            comi_pagar.ex = 0 and comi_pagar.baixa = '#39'N'#39' and '
      '         ((:cli = 0 ) or (comi_pagar.idvendedor = :cli)) and'
      '         ((:emp = 0 ) or (comi_pagar.idemp = :emp)) '
      ''
      ' order by vendedor.nome, comi_pagar.venci')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 542
    Top = 385
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qRelComiPagarId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qRelComiPagarEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qRelComiPagarIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qRelComiPagarDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object qRelComiPagarVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object qRelComiPagarValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagarBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qRelComiPagaridBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qRelComiPagarDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qRelComiPagarValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagaridSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qRelComiPagarIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qRelComiPagarEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRelComiPagaridOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qRelComiPagarValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagarValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagaridcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qRelComiPagarobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qRelComiPagarTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qRelComiPagarx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qRelComiPagarFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qRelComiPagarFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qRelComiPagarjuros: TFloatField
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagardesconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagartotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagaridcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qRelComiPagaridnf: TIntegerField
      FieldName = 'idnf'
    end
    object qRelComiPagarnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object qRelComiPagarnomeCli: TWideStringField
      FieldName = 'nomeCli'
      Size = 100
    end
    object qRelComiPagaridemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qRelComiPagarsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qRelComiPagarbasecalculo: TFloatField
      FieldName = 'basecalculo'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagarpComissao: TFloatField
      FieldName = 'pComissao'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagaridcreceber: TIntegerField
      FieldName = 'idcreceber'
    end
    object qRelComiPagaridvenda: TIntegerField
      FieldName = 'idvenda'
      ReadOnly = True
    end
    object qRelComiPagardtexpedicao: TDateTimeField
      FieldName = 'dtexpedicao'
    end
    object qRelComiPagaremissao1: TWideStringField
      FieldName = 'emissao1'
      ReadOnly = True
      Size = 30
    end
    object qRelComiPagarvenci1: TWideStringField
      FieldName = 'venci1'
      ReadOnly = True
      Size = 30
    end
  end
  object qRelComiPagas: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      '  convert(varchar, emissao, 103) emissao1,'
      ' convert(varchar, venci, 103) venci1,'#9
      '  comi_pagar.*, '
      '  vendedor.nome,'
      
        '  cliente.nome nomeCli, convert(varchar, venda.DTExpedicao, 103)' +
        ' dtexpedicao'
      'from comi_pagar '
      'inner join vendedor on vendedor.id = comi_pagar.idvendedor'
      'left join venda on venda.id = comi_pagar.idvenda'
      'left join cliente on cliente.id = venda.idcliente'
      ''
      'where '
      
        '   ((:dt = 0) or (cast(comi_pagar.venci as date) between :dtini ' +
        'and :dtfim))  and'
      
        '   ((:dtp = 0) or (cast(comi_pagar.dtpagto as date) between :dtp' +
        'ini and :dtpfim)) and '
      '   comi_pagar.ex = 0 and comi_pagar.baixa = '#39'S'#39' and '
      '   ((:cli = 0 ) or (comi_pagar.idvendedor = :cli)) and'
      '   ((:emp = 0 ) or (comi_pagar.idemp = :emp)) '
      ''
      ''
      'order by comi_pagar.dtpagto'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 542
    Top = 441
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtpfim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qRelComiPagasId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qRelComiPagasEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qRelComiPagasIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qRelComiPagasDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object qRelComiPagasVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object qRelComiPagasValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagasBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qRelComiPagasidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qRelComiPagasDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qRelComiPagasValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagasidSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qRelComiPagasIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qRelComiPagasEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRelComiPagasidOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qRelComiPagasValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagasValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagasidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qRelComiPagasobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qRelComiPagasTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qRelComiPagasx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qRelComiPagasIdVenda: TIntegerField
      FieldName = 'IdVenda'
    end
    object qRelComiPagasFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qRelComiPagasFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qRelComiPagasjuros: TFloatField
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagasdesconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagastotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,##0.00'
    end
    object qRelComiPagasidcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qRelComiPagasidnf: TIntegerField
      FieldName = 'idnf'
    end
    object qRelComiPagasnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object qRelComiPagasnomeCli: TWideStringField
      FieldName = 'nomeCli'
      Size = 100
    end
    object qRelComiPagasemissao1: TWideStringField
      FieldName = 'emissao1'
      ReadOnly = True
      Size = 30
    end
    object qRelComiPagasvenci1: TWideStringField
      FieldName = 'venci1'
      ReadOnly = True
      Size = 30
    end
    object qRelComiPagasdtexpedicao: TWideStringField
      FieldName = 'dtexpedicao'
      ReadOnly = True
      Size = 30
    end
  end
  object dRelComiPagas: TDataSource
    DataSet = qRelComiPagas
    Left = 574
    Top = 441
  end
  object qComi: TZQuery
    Connection = Conex
    UpdateObject = uComi
    OnNewRecord = qComiNewRecord
    SQL.Strings = (
      'select '
      ' cp.*,  '
      ' centrocusto.descricao'
      'from Comi_Pagar cp'
      'left join centrocusto on centrocusto.id = cp.idcusto'
      'where cp.id = 0')
    Params = <>
    Left = 216
    Top = 271
    object qComiId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qComiEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qComiIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qComiDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object qComiVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object qComiValor: TFloatField
      FieldName = 'Valor'
    end
    object qComiBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qComiidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qComiDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qComiValPago: TFloatField
      FieldName = 'ValPago'
    end
    object qComiidSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qComiIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qComiEx: TIntegerField
      FieldName = 'Ex'
    end
    object qComiidOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qComiValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
    end
    object qComiValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
    end
    object qComiidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qComiobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qComiTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qComix: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qComiIdVenda: TIntegerField
      FieldName = 'IdVenda'
    end
    object qComiFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qComiFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qComijuros: TFloatField
      FieldName = 'juros'
    end
    object qComidesconto: TFloatField
      FieldName = 'desconto'
    end
    object qComitotal: TFloatField
      FieldName = 'total'
    end
    object qComiidcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qComiidnf: TIntegerField
      FieldName = 'idnf'
    end
    object qComidescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qComiidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qComisincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qComibasecalculo: TFloatField
      FieldName = 'basecalculo'
    end
    object qComipComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qComiidcreceber: TIntegerField
      FieldName = 'idcreceber'
    end
  end
  object uComi: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Comi_Pagar'
      'WHERE'
      '  Comi_Pagar.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO Comi_Pagar'
      
        '  (Id, Emissao, IdVendedor, Documento, Venci, Valor, Baixa, idBa' +
        'ixa, DtPagto, '
      
        '   ValPago, idSubOP_P, IdUsuario, Ex, idOP_M, Valorfpgto, Valorf' +
        'pgto2, '
      
        '   idcondpgto, obs, Tipo, x, IdVenda, Fpgto, Fpgto2, juros, desc' +
        'onto, total, '
      
        '   idcusto, idnf, idemp, sincronizado, basecalculo, pComissao, i' +
        'dcreceber)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdVendedor, :Documento, :Venci, :Valor, :Baix' +
        'a, :idBaixa, '
      
        '   :DtPagto, :ValPago, :idSubOP_P, :IdUsuario, :Ex, :idOP_M, :Va' +
        'lorfpgto, '
      
        '   :Valorfpgto2, :idcondpgto, :obs, :Tipo, :x, :IdVenda, :Fpgto,' +
        ' :Fpgto2, '
      
        '   :juros, :desconto, :total, :idcusto, :idnf, :idemp, :sincroni' +
        'zado, :basecalculo, '
      '   :pComissao, :idcreceber)')
    ModifySQL.Strings = (
      'UPDATE Comi_Pagar SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdVendedor = :IdVendedor,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  idSubOP_P = :idSubOP_P,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  idOP_M = :idOP_M,'
      '  Valorfpgto = :Valorfpgto,'
      '  Valorfpgto2 = :Valorfpgto2,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  x = :x,'
      '  IdVenda = :IdVenda,'
      '  Fpgto = :Fpgto,'
      '  Fpgto2 = :Fpgto2,'
      '  juros = :juros,'
      '  desconto = :desconto,'
      '  total = :total,'
      '  idcusto = :idcusto,'
      '  idnf = :idnf,'
      '  idemp = :idemp,'
      '  sincronizado = :sincronizado,'
      '  basecalculo = :basecalculo,'
      '  pComissao = :pComissao,'
      '  idcreceber = :idcreceber'
      'WHERE'
      '  Comi_Pagar.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 256
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdVendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSubOp_P'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idOP_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdVenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'basecalculo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pComissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcreceber'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object T: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  venda.*, nf.nf'
      'from venda'
      'left join nf on nf.id = venda.notafiscal'
      'where venda.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 928
    Top = 403
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object TData: TDateTimeField
      FieldName = 'Data'
    end
    object TIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object TIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object TIdCondPgto: TIntegerField
      FieldName = 'IdCondPgto'
    end
    object TValor: TFloatField
      FieldName = 'Valor'
    end
    object TDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TTotal: TFloatField
      FieldName = 'Total'
    end
    object TPrazoEntrega: TWideStringField
      FieldName = 'PrazoEntrega'
      Size = 100
    end
    object TNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object TIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object Tx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object TEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object TExpedido: TWideStringField
      FieldName = 'Expedido'
      Size = 1
    end
    object TGeradoNFe: TWideStringField
      FieldName = 'GeradoNFe'
      Size = 1
    end
    object TpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object TObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object Tboleto: TWideStringField
      FieldName = 'boleto'
      Required = True
      Size = 1
    end
    object Tpacote: TWideStringField
      FieldName = 'pacote'
      Size = 50
    end
    object Ttotcubagem: TFloatField
      FieldName = 'totcubagem'
    end
    object Tdesc_especial: TFloatField
      FieldName = 'desc_especial'
    end
    object Tidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object Tstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object Tsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Tidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object Tidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object Tidorc: TIntegerField
      FieldName = 'idorc'
    end
    object Ttransp_vendedor: TWideStringField
      FieldName = 'transp_vendedor'
      Size = 150
    end
    object TmotivoR: TWideStringField
      FieldName = 'motivoR'
      Size = 255
    end
    object TidUserR: TIntegerField
      FieldName = 'idUserR'
    end
    object TDataR: TDateTimeField
      FieldName = 'DataR'
    end
    object TtipoFrete: TWideStringField
      FieldName = 'tipoFrete'
      Size = 3
    end
    object Tidtransp: TIntegerField
      FieldName = 'idtransp'
    end
    object Tforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object TtelTransp: TWideStringField
      FieldName = 'telTransp'
    end
    object TpDesconto: TFloatField
      FieldName = 'pDesconto'
    end
    object Tidcondpgto2: TIntegerField
      FieldName = 'idcondpgto2'
    end
    object Tidtranspotadora: TIntegerField
      FieldName = 'idtranspotadora'
    end
    object Tfoma_pgto2: TWideStringField
      FieldName = 'foma_pgto2'
      Size = 100
    end
    object Tnf: TIntegerField
      FieldName = 'nf'
    end
    object Ttotipi: TFloatField
      FieldName = 'totipi'
    end
    object Tv_adicional: TFloatField
      FieldName = 'v_adicional'
    end
  end
  object qC_i: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select *'
      'from cond_pgto_i'
      'where ex = 0 and idcond = :id'
      'Order By dias')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 928
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qC_iId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qC_iIDCond: TIntegerField
      FieldName = 'IDCond'
    end
    object qC_iPorc: TFloatField
      FieldName = 'Porc'
    end
    object qC_iDias: TIntegerField
      FieldName = 'Dias'
    end
  end
  object dEmpresa: TDataSource
    DataSet = qEmpresa
    Left = 412
    Top = 460
  end
  object qEmpresa: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from empresa'
      'order by id, empresa_padrao desc')
    Params = <>
    Left = 376
    Top = 460
    object qEmpresaid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qEmpresaRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Size = 60
    end
    object qEmpresaCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object qEmpresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qEmpresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qEmpresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 25
    end
    object qEmpresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qEmpresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qEmpresaSITE: TWideStringField
      FieldName = 'SITE'
      Size = 50
    end
    object qEmpresaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qEmpresaRESPONS: TWideStringField
      FieldName = 'RESPONS'
      Size = 40
    end
    object qEmpresaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 30
    end
    object qEmpresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qEmpresalogo: TWideStringField
      FieldName = 'logo'
      Size = 150
    end
    object qEmpresaex: TWideStringField
      FieldName = 'ex'
      Size = 1
    end
    object qEmpresafantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qEmpresanum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object qEmpresaidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object qEmpresaIE: TWideStringField
      FieldName = 'IE'
    end
    object qEmpresaOBSNF: TWideMemoField
      FieldName = 'OBSNF'
      BlobType = ftWideMemo
    end
    object qEmpresaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
    end
    object qEmpresaMARCA: TWideStringField
      FieldName = 'MARCA'
    end
    object qEmpresaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qEmpresaTPEMPRESANFE: TIntegerField
      FieldName = 'TPEMPRESANFE'
    end
    object qEmpresaNFE_DUPLICATA: TWideStringField
      FieldName = 'NFE_DUPLICATA'
      Required = True
      Size = 1
    end
    object qEmpresaNFE: TWideStringField
      FieldName = 'NFE'
      Required = True
      Size = 1
    end
    object qEmpresaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qEmpresaCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object qEmpresaCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 3
    end
    object qEmpresaNFE_RAVE: TWideStringField
      FieldName = 'NFE_RAVE'
      Size = 255
    end
    object qEmpresaNFE_NUMSERIE: TWideStringField
      FieldName = 'NFE_NUMSERIE'
      Size = 100
    end
    object qEmpresaNFE_EMAIL: TWideStringField
      FieldName = 'NFE_EMAIL'
      Size = 100
    end
    object qEmpresaNFE_SENHA: TWideStringField
      FieldName = 'NFE_SENHA'
      Size = 50
    end
    object qEmpresaNFE_ASSUNTO: TWideStringField
      FieldName = 'NFE_ASSUNTO'
      Size = 100
    end
    object qEmpresaNFE_CORPOMSG: TWideMemoField
      FieldName = 'NFE_CORPOMSG'
      BlobType = ftWideMemo
    end
    object qEmpresaNFE_DANFE: TWideStringField
      FieldName = 'NFE_DANFE'
      Size = 255
    end
    object qEmpresaNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 255
    end
    object qEmpresaNFE_CANCELADA: TWideMemoField
      FieldName = 'NFE_CANCELADA'
      BlobType = ftWideMemo
    end
    object qEmpresaNFE_COPIAEMAIL: TWideStringField
      FieldName = 'NFE_COPIAEMAIL'
      Size = 100
    end
    object qEmpresaTIPO_EMPRESA: TWideStringField
      FieldName = 'TIPO_EMPRESA'
      Required = True
      Size = 1
    end
    object qEmpresaTIPOIMP_NFE: TWideStringField
      FieldName = 'TIPOIMP_NFE'
      Required = True
      Size = 1
    end
    object qEmpresaSIMPLESN_FAIXA: TIntegerField
      FieldName = 'SIMPLESN_FAIXA'
    end
    object qEmpresaSIMPLESN_TIPO: TWideStringField
      FieldName = 'SIMPLESN_TIPO'
      Size = 1
    end
    object qEmpresaDEST_IMPOSTOS: TWideStringField
      FieldName = 'DEST_IMPOSTOS'
      Required = True
      Size = 1
    end
    object qEmpresaMOSTRA_FONTEIBPT: TWideStringField
      FieldName = 'MOSTRA_FONTEIBPT'
      Required = True
      Size = 1
    end
    object qEmpresaSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 150
    end
    object qEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qEmpresaEMAIL_SSL: TWideStringField
      FieldName = 'EMAIL_SSL'
      Required = True
      Size = 1
    end
    object qEmpresaEMAIL_TLS: TWideStringField
      FieldName = 'EMAIL_TLS'
      Size = 1
    end
    object qEmpresaNT003: TWideStringField
      FieldName = 'NT003'
      Size = 1
    end
    object qEmpresaNTCEST: TWideStringField
      FieldName = 'NTCEST'
      Size = 1
    end
    object qEmpresaPICMSINTERDEST: TFloatField
      FieldName = 'PICMSINTERDEST'
    end
    object qEmpresaCSC: TWideStringField
      FieldName = 'CSC'
      Size = 255
    end
    object qEmpresaIDCSC: TWideStringField
      FieldName = 'IDCSC'
      Size = 255
    end
    object qEmpresaMOSTRA_ST: TWideStringField
      FieldName = 'MOSTRA_ST'
      Required = True
      Size = 1
    end
    object qEmpresaPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object qEmpresaTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object qEmpresaiduf: TIntegerField
      FieldName = 'iduf'
    end
    object qEmpresaNF_IMPOSTOPORNCM: TWideStringField
      FieldName = 'NF_IMPOSTOPORNCM'
      Required = True
      Size = 1
    end
    object qEmpresaemail_contador: TWideStringField
      FieldName = 'email_contador'
      Size = 150
    end
    object qEmpresatpAmbiente: TWideStringField
      FieldName = 'tpAmbiente'
      Required = True
      Size = 1
    end
    object qEmpresanf_msgAproveitCredito: TWideStringField
      FieldName = 'nf_msgAproveitCredito'
      ReadOnly = True
      Size = 1
    end
    object qEmpresanf_cfopprod_puxar_NF: TWideStringField
      FieldName = 'nf_cfopprod_puxar_NF'
      ReadOnly = True
      Size = 1
    end
    object qEmpresaempresa_padrao: TWideStringField
      FieldName = 'empresa_padrao'
      Required = True
      Size = 1
    end
    object qEmpresarem_email: TWideStringField
      FieldName = 'rem_email'
      Size = 150
    end
    object qEmpresarem_senha: TWideStringField
      FieldName = 'rem_senha'
      Size = 50
    end
    object qEmpresarem_smtp: TWideStringField
      FieldName = 'rem_smtp'
      Size = 150
    end
    object qEmpresarem_porta: TIntegerField
      FieldName = 'rem_porta'
    end
    object qEmpresarem_ssl: TWideStringField
      FieldName = 'rem_ssl'
      Size = 1
    end
    object qEmpresarem_tls: TWideStringField
      FieldName = 'rem_tls'
      Size = 1
    end
    object qEmpresaim: TWideStringField
      FieldName = 'im'
    end
    object qEmpresaauto_acesso_xml: TWideStringField
      FieldName = 'auto_acesso_xml'
    end
    object qEmpresarep_cfop_d: TIntegerField
      FieldName = 'rep_cfop_d'
    end
    object qEmpresarep_cfop_f: TIntegerField
      FieldName = 'rep_cfop_f'
    end
    object qEmpresarep_csosn: TIntegerField
      FieldName = 'rep_csosn'
    end
    object qEmpresamdfe_serie: TWideStringField
      FieldName = 'mdfe_serie'
      Required = True
      Size = 1
    end
    object qEmpresamdfe_xml: TWideStringField
      FieldName = 'mdfe_xml'
      Size = 100
    end
    object qEmpresamdfe_danfe: TWideStringField
      FieldName = 'mdfe_danfe'
      Size = 100
    end
    object qEmpresamsn_email_OC: TWideMemoField
      FieldName = 'msn_email_OC'
      BlobType = ftWideMemo
    end
  end
  object dExecWeb: TDataSource
    DataSet = qExecWeb
    Left = 939
    Top = 32
  end
  object qComissao: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select cp.id, v.idweb, v.pcomissao'
      'from comi_pagar cp'
      'left join venda v on v.id = cp.idvenda'
      'where cp.ex = 0 and cp.sincronizado = '#39'N'#39' and  '
      '    coalesce(v.idweb,0) > 0 and v.ex = 0 and v.status <> '#39'C'#39
      ''
      'group by cp.id, v.idweb, v.pcomissao')
    Params = <>
    Left = 717
    Top = 443
    object qComissaoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qComissaoidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qComissaopcomissao: TFloatField
      FieldName = 'pcomissao'
    end
  end
  object qComiV: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select sum(cp.total) tot'
      'from comi_pagar cp'
      'left join venda v on v.id = cp.idvenda'
      'where cp.ex = 0 and '
      '  coalesce(v.idweb,0) > 0 and v.ex = 0 and v.status <> '#39'C'#39
      '    and v.idweb = :id'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 763
    Top = 443
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qComiVtot: TFloatField
      FieldName = 'tot'
      ReadOnly = True
    end
  end
  object qCRec: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select cr.id, v.idweb'
      'from creceber cr'
      'left join venda v on v.id = cr.idvenda'
      'where cr.ex = 0 and cr.sincronizado = '#39'N'#39' and  '
      '    coalesce(v.idweb,0) > 0 and v.ex = 0 and v.status <> '#39'C'#39
      ''
      'group by cr.id, v.idweb')
    Params = <>
    Left = 764
    Top = 301
    object qCRecid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qCRecidweb: TIntegerField
      FieldName = 'idweb'
    end
  end
  object qCRec2: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  '
      '  cast( max( v.total) as numeric(12,2)) tot,'
      
        '  cast( sum( case when cr.baixa = '#39'S'#39' then cr.valpago else 0.00 ' +
        'end ) as numeric(12,2)) totPg,'
      
        '  cast( sum( case when cr.baixa = '#39'N'#39' then cr.total else 0.00 en' +
        'd ) as numeric(12,2)) totAb'
      ''
      'from creceber cr'
      'left join venda v on v.id = cr.idvenda'
      'where cr.ex = 0 and '
      '    coalesce(v.idweb,0) > 0 and v.ex = 0 and v.status <> '#39'C'#39
      '    and v.idweb = :id'
      ''
      'group by cr.idvenda'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 764
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCRec2tot: TFloatField
      FieldName = 'tot'
      ReadOnly = True
    end
    object qCRec2totAb: TFloatField
      FieldName = 'totAb'
      ReadOnly = True
    end
    object qCRec2totPg: TFloatField
      FieldName = 'totPg'
      ReadOnly = True
    end
  end
  object IdSocket1: TIdSSLIOHandlerSocketOpenSSL
    Destination = 'smtp.thrsolucoes.com.br:587'
    Host = 'smtp.thrsolucoes.com.br'
    MaxLineAction = maException
    Port = 587
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv3
    SSLOptions.SSLVersions = [sslvSSLv3]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 832
    Top = 17
  end
  object qIt: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select custofinal, margem '
      'from produto'
      'where id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 880
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qItcustofinal: TFloatField
      FieldName = 'custofinal'
    end
    object qItmargem: TFloatField
      FieldName = 'margem'
    end
  end
  object RLBTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN16
    Versao = '1.1.5'
    Left = 252
    Top = 508
  end
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB240
    TipoMovimento = tmRemessa
    Left = 308
    Top = 508
  end
  object dBanco: TDataSource
    DataSet = Banco
    Left = 458
    Top = 508
  end
  object Banco: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      ' conta.*,'
      ''
      '  case'
      '      when conta.bco = 237 then '#39'BRADESCO'#39
      '      when conta.bco = 341 then '#39'ITAU'#39
      '       when conta.bco = 001 then '#39'BANCO BRASIL'#39
      '       when conta.bco = 104 then '#39'CAIXA'#39
      '        when conta.bco = 033 then '#39'SANTANDER'#39
      '        when conta.bco = 748 then '#39'SICRED'#39
      '        when conta.bco = 756 then '#39'SICOOB'#39
      '   end  NomeBanco'
      'from conta'
      'where conta.tipo = '#39'B'#39' and conta.usaboleto = '#39'S'#39' and'
      ' ((:bb = 0 ) or (conta.id =  :idbco))'
      ''
      'order by conta.bco')
    Params = <
      item
        DataType = ftUnknown
        Name = 'bb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idbco'
        ParamType = ptUnknown
      end>
    Left = 440
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idbco'
        ParamType = ptUnknown
      end>
    object BancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object BancoTITULAR: TWideStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object BancoAG: TWideStringField
      FieldName = 'AG'
      Size = 10
    end
    object BancoCC: TWideStringField
      FieldName = 'CC'
      Size = 30
    end
    object BancoBCO: TWideStringField
      FieldName = 'BCO'
      Size = 3
    end
    object BancoTIPO: TWideStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object BancoIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object BancoUSABOLETO: TWideStringField
      FieldName = 'USABOLETO'
      Required = True
      Size = 1
    end
    object BancoBTIPO: TWideStringField
      FieldName = 'BTIPO'
      Size = 1
    end
    object BancoBAGENCIA: TWideStringField
      FieldName = 'BAGENCIA'
      Size = 10
    end
    object BancoBCONTA: TWideStringField
      FieldName = 'BCONTA'
      Size = 10
    end
    object BancoBCONTAD: TWideStringField
      FieldName = 'BCONTAD'
      Size = 1
    end
    object BancoBCEDENTE: TWideStringField
      FieldName = 'BCEDENTE'
      Size = 10
    end
    object BancoBCEDENTED: TWideStringField
      FieldName = 'BCEDENTED'
      Size = 1
    end
    object BancoBCONVENIO: TWideStringField
      FieldName = 'BCONVENIO'
      Size = 10
    end
    object BancoBCARTEIRA: TWideStringField
      FieldName = 'BCARTEIRA'
      Size = 10
    end
    object BancoBSEQ_REMESSA: TIntegerField
      FieldName = 'BSEQ_REMESSA'
    end
    object BancoMSG_BOLETO: TWideMemoField
      FieldName = 'MSG_BOLETO'
      BlobType = ftWideMemo
    end
    object BancoNOMECEDENTE: TWideStringField
      FieldName = 'NOMECEDENTE'
      Size = 150
    end
    object BancoCNPJCEDENTE: TWideStringField
      FieldName = 'CNPJCEDENTE'
    end
    object BancoDIASPROT: TIntegerField
      FieldName = 'DIASPROT'
    end
    object BancoMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object BancoJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object BancoNomeBanco: TWideStringField
      FieldName = 'NomeBanco'
      ReadOnly = True
      Size = 12
    end
    object Bancoendcedende: TWideStringField
      FieldName = 'endcedende'
      Size = 80
    end
    object Banconumcedende: TWideStringField
      FieldName = 'numcedende'
      Size = 10
    end
    object Bancobaicedende: TWideStringField
      FieldName = 'baicedende'
      Size = 50
    end
    object Bancocidcedende: TWideStringField
      FieldName = 'cidcedende'
      Size = 50
    end
    object Bancoufcedende: TWideStringField
      FieldName = 'ufcedende'
      Size = 2
    end
    object Bancocepcedende: TWideStringField
      FieldName = 'cepcedende'
      Size = 10
    end
    object BancoBCNAB: TIntegerField
      FieldName = 'BCNAB'
      Required = True
    end
    object BancotipoMulta: TWideStringField
      FieldName = 'tipoMulta'
      Required = True
      Size = 1
    end
    object BancotipoProtesto: TWideStringField
      FieldName = 'tipoProtesto'
      Required = True
      Size = 1
    end
    object BancoBAGENCIAD: TWideStringField
      FieldName = 'BAGENCIAD'
      Size = 2
    end
  end
  object Bol_dis: TZQuery
    Connection = Conex
    UpdateObject = uBol_dis
    BeforePost = Bol_disBeforePost
    OnNewRecord = Bol_disNewRecord
    SQL.Strings = (
      'select * from boleto')
    Params = <>
    Left = 560
    Top = 508
    object Bol_disID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Bol_disIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object Bol_disTPCLIENTE: TWideStringField
      FieldName = 'TPCLIENTE'
      Size = 1
    end
    object Bol_disIDTHR030: TIntegerField
      FieldName = 'IDTHR030'
    end
    object Bol_disBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object Bol_disSEQ_REMESSA: TIntegerField
      FieldName = 'SEQ_REMESSA'
    end
    object Bol_disNOSSO_NUMERO: TWideStringField
      FieldName = 'NOSSO_NUMERO'
    end
    object Bol_disNUMERO_DOC: TWideStringField
      FieldName = 'NUMERO_DOC'
    end
    object Bol_disEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object Bol_disVENCI: TDateTimeField
      FieldName = 'VENCI'
    end
    object Bol_disVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Bol_disBAIXADO: TWideStringField
      FieldName = 'BAIXADO'
      Required = True
      Size = 1
    end
    object Bol_disIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object Bol_disX: TWideStringField
      FieldName = 'X'
      Required = True
      Size = 1
    end
    object Bol_disSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Bol_disNN_SICREDI: TWideStringField
      FieldName = 'NN_SICREDI'
    end
  end
  object uBol_dis: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM boleto'
      'WHERE'
      '  boleto.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO boleto'
      
        '  (ID, IDCLIENTE, TPCLIENTE, IDTHR030, BANCO, SEQ_REMESSA, NOSSO' +
        '_NUMERO, '
      
        '   NUMERO_DOC, EMISSAO, VENCI, VALOR, BAIXADO, IDCONTA, X, STATU' +
        'S, NN_SICREDI)'
      'VALUES'
      
        '  (:ID, :IDCLIENTE, :TPCLIENTE, :IDTHR030, :BANCO, :SEQ_REMESSA,' +
        ' :NOSSO_NUMERO, '
      
        '   :NUMERO_DOC, :EMISSAO, :VENCI, :VALOR, :BAIXADO, :IDCONTA, :X' +
        ', :STATUS, '
      '   :NN_SICREDI)')
    ModifySQL.Strings = (
      'UPDATE boleto SET'
      '  ID = :ID,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  TPCLIENTE = :TPCLIENTE,'
      '  IDTHR030 = :IDTHR030,'
      '  BANCO = :BANCO,'
      '  SEQ_REMESSA = :SEQ_REMESSA,'
      '  NOSSO_NUMERO = :NOSSO_NUMERO,'
      '  NUMERO_DOC = :NUMERO_DOC,'
      '  EMISSAO = :EMISSAO,'
      '  VENCI = :VENCI,'
      '  VALOR = :VALOR,'
      '  BAIXADO = :BAIXADO,'
      '  IDCONTA = :IDCONTA,'
      '  X = :X,'
      '  STATUS = :STATUS,'
      '  NN_SICREDI = :NN_SICREDI'
      'WHERE'
      '  boleto.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 608
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPCLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTHR030'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Banco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nosso_numero'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numero_doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdConta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nn_sicredi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object bCRec: TZQuery
    Connection = Conex
    UpdateObject = uCRec
    SQL.Strings = (
      'select creceber.* , cliente.NOME, nf.nf'
      'From creceber'
      'left join cliente on cliente.Id = creceber.Idcliente'
      'left join nf  on nf.Id = creceber.Idnf'
      'where  ((:cli = 0) or (creceber.Idcliente = :cli)) and'
      '            creceber.ex = 0 and baixa = '#39'N'#39
      'Order By creceber.venci')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    Left = 368
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    object bCRecId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object bCRecEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object bCRecIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object bCRecDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object bCRecVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object bCRecValor: TFloatField
      FieldName = 'Valor'
    end
    object bCRecJuros: TFloatField
      FieldName = 'Juros'
    end
    object bCRecDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object bCRecTotal: TFloatField
      FieldName = 'Total'
    end
    object bCRecBaixa: TWideStringField
      FieldName = 'Baixa'
      Required = True
      Size = 1
    end
    object bCRecidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object bCRecDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object bCRecValPago: TFloatField
      FieldName = 'ValPago'
    end
    object bCRecFpgto1: TWideStringField
      FieldName = 'Fpgto1'
      Size = 50
    end
    object bCRecValor1: TFloatField
      FieldName = 'Valor1'
    end
    object bCRecFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object bCRecValor2: TFloatField
      FieldName = 'Valor2'
    end
    object bCRecidVenda: TIntegerField
      FieldName = 'idVenda'
    end
    object bCRecIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object bCRecEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object bCRecx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object bCRecidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object bCRecobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object bCRecTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object bCRecidnf: TIntegerField
      FieldName = 'idnf'
    end
    object bCRecdoc_bx_parcial: TWideStringField
      FieldName = 'doc_bx_parcial'
    end
    object bCRecgerado_boleto: TWideStringField
      FieldName = 'gerado_boleto'
      Required = True
      Size = 1
    end
    object bCRecidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object bCRecsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object bCRecemail_vencidas: TWideStringField
      FieldName = 'email_vencidas'
      Size = 1
    end
    object bCRecidretorno: TIntegerField
      FieldName = 'idretorno'
    end
    object bCRecbenviando: TWideStringField
      FieldName = 'benviando'
      Required = True
      Size = 1
    end
    object bCRecbimpresso: TWideStringField
      FieldName = 'bimpresso'
      Required = True
      Size = 1
    end
    object bCRecnn_sicred: TWideStringField
      FieldName = 'nn_sicred'
    end
    object bCRecbconta: TIntegerField
      FieldName = 'bconta'
    end
    object bCRecgeradoBol: TWideStringField
      FieldName = 'geradoBol'
      Required = True
      Size = 1
    end
    object bCRecNOME: TWideStringField
      FieldName = 'NOME'
      Size = 100
    end
    object bCRecnf: TIntegerField
      FieldName = 'nf'
    end
    object bCRecnParc: TIntegerField
      FieldName = 'nParc'
    end
  end
  object qDis: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from Cliente'
      'where Id = :dis')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dis'
        ParamType = ptUnknown
      end>
    Left = 504
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dis'
        ParamType = ptUnknown
      end>
    object qDisId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qDisNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qDisEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qDisNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qDisBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qDisCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qDisCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qDisUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qDisemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qDisrg: TWideStringField
      FieldName = 'rg'
    end
    object qDiscpf: TWideStringField
      FieldName = 'cpf'
    end
    object qDisdtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
    object qDisdtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
    end
    object qDistel1: TWideStringField
      FieldName = 'tel1'
    end
    object qDistel2: TWideStringField
      FieldName = 'tel2'
    end
    object qDistel3: TWideStringField
      FieldName = 'tel3'
    end
    object qDisobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qDisex: TIntegerField
      FieldName = 'ex'
    end
    object qDislimiteCredito: TFloatField
      FieldName = 'limiteCredito'
    end
    object qDisidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object qDistppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object qDisrazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object qDiscomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object qDisEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object qDisNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qDisBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qDisCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qDisidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qDisUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qDisComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qDisativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qDispais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qDispais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qDiscontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qDisprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qDisidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qDisdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qDisinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qDisimagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object qDisidvendedor: TIntegerField
      FieldName = 'idvendedor'
    end
    object qDisidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qDissincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qDiscidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
    object qDisidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object qDisidemp: TIntegerField
      FieldName = 'idemp'
    end
  end
  object qCo: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from cond_pgto'
      'where ex = 0 and id = :id'
      'order by cond_padrao desc, descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 928
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCoId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCoDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qCoParcelas: TIntegerField
      FieldName = 'Parcelas'
    end
    object qCoNumParc: TIntegerField
      FieldName = 'NumParc'
    end
    object qCoIntervalo: TIntegerField
      FieldName = 'Intervalo'
    end
    object qCoJuros: TFloatField
      FieldName = 'Juros'
    end
    object qCoCredito: TWideStringField
      FieldName = 'Credito'
      Required = True
      Size = 1
    end
    object qCocond_padrao: TWideStringField
      FieldName = 'cond_padrao'
      Required = True
      Size = 1
    end
    object qCoantecipado: TWideStringField
      FieldName = 'antecipado'
      Required = True
      Size = 1
    end
  end
  object qCia: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from comercial'
      'where ex = 0 and id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 960
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCiaId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCiaDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qCiaPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object qCiasincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qCiaidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qCiaex: TIntegerField
      FieldName = 'ex'
      Required = True
    end
    object qCiatipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
  end
  object L: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  venda_i.*'
      'from venda_i'
      'where idvenda = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 968
    Top = 403
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object LId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object LIdVenda: TIntegerField
      FieldName = 'IdVenda'
      Required = True
    end
    object LIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object LTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object LQtd: TFloatField
      FieldName = 'Qtd'
    end
    object LUnit: TFloatField
      FieldName = 'Unit'
    end
    object LDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object LTotal: TFloatField
      FieldName = 'Total'
    end
    object Lx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object LRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object Lunit2: TFloatField
      FieldName = 'unit2'
    end
    object Lunitst: TFloatField
      FieldName = 'unitst'
    end
    object LpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object Lordemcompra: TWideStringField
      FieldName = 'ordemcompra'
    end
    object Lcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object Lqtd_cx: TFloatField
      FieldName = 'qtd_cx'
    end
    object Lsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object LidWeb: TIntegerField
      FieldName = 'idWeb'
    end
    object LvCusto: TFloatField
      FieldName = 'vCusto'
    end
    object LvMargem: TFloatField
      FieldName = 'vMargem'
    end
    object LvUnitLiq: TFloatField
      FieldName = 'vUnitLiq'
    end
    object LvTotLiq: TFloatField
      FieldName = 'vTotLiq'
    end
    object LpDesconto: TFloatField
      FieldName = 'pDesconto'
    end
    object Lvalipi: TFloatField
      FieldName = 'valipi'
    end
  end
  object qGrupoZ: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select top 1 0 id, '#39'TODOS                                       ' +
        '        '#39' descricao '
      'from grupo'
      ''
      'union all'
      ''
      'select grupo.id, grupo.descricao '
      'from grupo'
      ''
      ''
      'order by 1')
    Params = <>
    Left = 376
    Top = 348
    object qGrupoZid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qGrupoZdescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
  end
  object dGrupoZero: TDataSource
    DataSet = qGrupoZ
    Left = 415
    Top = 348
  end
  object qNF: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select nf.id, nf.nf, nf.emissao, nf.t_nf, venda.id idvenda, vend' +
        'a.idweb, venda.status,'
      
        ' empresa.serie, venda.pcomissao, venda.linhadigitavel, venda.lin' +
        'kboleto, venda.linkdanfe'
      'from nf'
      'left join venda on venda.notafiscal = nf.id'
      'left join empresa on empresa.id = nf.idemp'
      'where '
      '  coalesce(venda.idweb,0) > 0 and venda.sincronizado = '#39'N'#39' ')
    Params = <>
    Left = 664
    Top = 501
    object qNFid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qNFnf: TIntegerField
      FieldName = 'nf'
    end
    object qNFemissao: TDateTimeField
      FieldName = 'emissao'
    end
    object qNFt_nf: TFloatField
      FieldName = 't_nf'
    end
    object qNFidvenda: TIntegerField
      FieldName = 'idvenda'
      Required = True
    end
    object qNFidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qNFstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object qNFserie: TWideStringField
      FieldName = 'serie'
      Size = 10
    end
    object qNFpcomissao: TFloatField
      FieldName = 'pcomissao'
    end
    object qNFlinhadigitavel: TWideStringField
      FieldName = 'linhadigitavel'
      Size = 50
    end
    object qNFlinkboleto: TWideStringField
      FieldName = 'linkboleto'
      Size = 100
    end
    object qNFlinkdanfe: TWideStringField
      FieldName = 'linkdanfe'
      Size = 100
    end
  end
  object qPar: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select creceber.id, creceber.venci, creceber.total, creceber.doc' +
        'umento'
      'from creceber'
      
        'where creceber.ex = 0 and creceber.tipo = '#39'V'#39' and creceber.idven' +
        'da = :id'
      'order by 2'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 704
    Top = 501
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qParid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qParvenci: TDateTimeField
      FieldName = 'venci'
    end
    object qPartotal: TFloatField
      FieldName = 'total'
    end
    object qPardocumento: TWideStringField
      FieldName = 'documento'
    end
  end
  object qParcWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select * '
      'from parcelas'
      'where idvenda = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 936
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qParcWebId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qParcWebVencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object qParcWebValor: TFloatField
      FieldName = 'Valor'
    end
    object qParcWebParcela: TWideStringField
      FieldName = 'Parcela'
      Size = 50
    end
    object qParcWebidvenda: TIntegerField
      FieldName = 'idvenda'
    end
  end
  object qCliCondWeb: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select id, idempresa, idcliente,  idcond, ex'
      'from cliente_cond'
      'where idempresa = :emp'
      'order by idempresa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 763
    Top = 499
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qCliCondWebid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qCliCondWebidempresa: TIntegerField
      FieldName = 'idempresa'
      Required = True
    end
    object qCliCondWebidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qCliCondWebidcond: TIntegerField
      FieldName = 'idcond'
    end
    object qCliCondWebex: TIntegerField
      FieldName = 'ex'
      Required = True
    end
  end
  object qCliCond: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from cliente_cond'
      'where sincronizado = '#39'N'#39)
    Params = <>
    Left = 811
    Top = 499
    object qCliCondId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCliCondIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qCliCondIdCond: TIntegerField
      FieldName = 'IdCond'
    end
    object qCliCondSincronizado: TWideStringField
      FieldName = 'Sincronizado'
      Required = True
      Size = 1
    end
    object qCliCondIdemp: TIntegerField
      FieldName = 'Idemp'
    end
    object qCliCondIdweb: TIntegerField
      FieldName = 'Idweb'
    end
    object qCliCondex: TIntegerField
      FieldName = 'ex'
      Required = True
    end
  end
  object qRepW_I: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select *'
      'from representante_i'
      'where idempresa = :emp'
      'order by idempresa, idrep')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 768
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qRepW_IId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qRepW_IIdempresa: TIntegerField
      FieldName = 'Idempresa'
    end
    object qRepW_IIdrep: TIntegerField
      FieldName = 'Idrep'
    end
    object qRepW_IIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qRepW_IEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRepW_IIdlocal: TIntegerField
      FieldName = 'Idlocal'
    end
    object qRepW_Ix: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
  end
  object qRepI: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from vendedor_i'
      'where sincronizado = '#39'N'#39' ')
    Params = <>
    Left = 804
    Top = 91
    object qRepIId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qRepIIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qRepIIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qRepIsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Size = 1
    end
    object qRepIEx: TIntegerField
      FieldName = 'Ex'
    end
    object qRepIIdweb: TIntegerField
      FieldName = 'Idweb'
    end
    object qRepIx: TWideStringField
      FieldName = 'x'
      ReadOnly = True
      Size = 1
    end
  end
  object qImpOC: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select fornecedor.NOME, '
      'case '
      ' when oc_i.tipo = '#39'S'#39' then  semi_acabado.DESCRICAO'
      ' when oc_i.tipo = '#39'P'#39' then  produto.DESCRICAO'
      ' when oc_i.tipo = '#39'M'#39' then  produto.DESCRICAO'
      'end as DESCRICAO, '
      'case '
      ' when oc_i.tipo = '#39'S'#39' then  semi_acabado.Id'
      ' when oc_i.tipo = '#39'P'#39' then  produto.referencia'
      ' when oc_i.tipo = '#39'M'#39' then  produto.referencia'
      'end as ref, '
      'case '
      ' when oc_i.tipo = '#39'S'#39' then  semi_acabado.unidade'
      ' when oc_i.tipo = '#39'P'#39' then  produto.unidade_nfe'
      ' when oc_i.tipo = '#39'M'#39' then  produto.unidade_nfe'
      'end as un, '
      'oc_i.unitario unit,'
      'oc_i.total totpro,'
      'oc.*, oc_i.*, cp.descricao desCP,'
      'e.razao e_razao,'
      'e.fantasia e_fantasia,'
      'e.endereco e_endereco,'
      'e.num e_num,'
      'e.bairro e_bairro,'
      'e.CEP e_cep,'
      'e.CIDADE e_cidade,'
      'e.UF e_uf,'
      'e.CNPJ e_cnpj,'
      'e.ie e_ie,'
      'e.im e_im,'
      'e.TELEFONE e_tel,'
      
        'e.EMAIL e_mail, fornecedor.fantasia, fornecedor.ENDERECO, fornec' +
        'edor.num, fornecedor.BAIRRO, fornecedor.CEP, fornecedor.CIDADE,'
      
        'fornecedor.UF, fornecedor.CNPJ, fornecedor.IE, fornecedor.tel1, ' +
        'fornecedor.EMAIL,t.nome t_nome, t.ENDERECO t_endereco, t.BAIRRO ' +
        't_bairro, t.CEP t_cep, t.CIDADE t_cidade,'
      
        't.UF t_Uf, t.CNPJ t_cnpj, t.IE t_ie, t.telefone t_telefone, t.EM' +
        'AIL t_email'
      'from oc'
      'LEFT JOIN oc_i ON oc_i.IDOC = oc.ID'
      'LEFT JOIN fornecedor ON fornecedor.ID = oc.IDFORNECEDOR'
      
        'LEFT JOIN semi_acabado ON semi_acabado.ID = oc_i.IDPRODUTO and o' +
        'c_i.tipo = '#39'S'#39
      
        'LEFT JOIN produto ON produto.ID = oc_i.IDPRODUTO  and oc_i.tipo ' +
        'in ('#39'P'#39','#39'M'#39')'
      'LEFT JOIN cond_pgto cp ON cp.ID = oc.IDcondpgto'
      'LEFT JOIN empresa e ON e.ID = oc.IDemp'
      'LEFT JOIN TRANSPORTADORA t ON t.ID = oc.idtransp'
      ''
      'WHERE oc.ID = :COD')
    Params = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 249
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object qImpOCNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qImpOCDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 150
    end
    object qImpOCunit: TFloatField
      FieldName = 'unit'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCtotpro: TFloatField
      FieldName = 'totpro'
    end
    object qImpOCId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qImpOCDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qImpOCidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object qImpOCidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qImpOCValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCtpfrete: TIntegerField
      FieldName = 'tpfrete'
    end
    object qImpOCidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object qImpOCOBS: TWideStringField
      FieldName = 'OBS'
      Size = 255
    end
    object qImpOCEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object qImpOCX: TWideStringField
      FieldName = 'X'
      Required = True
      Size = 1
    end
    object qImpOCidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qImpOCId_1: TIntegerField
      FieldName = 'Id_1'
      Required = True
    end
    object qImpOCidOC: TIntegerField
      FieldName = 'idOC'
    end
    object qImpOCidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object qImpOCQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,##0.###'
    end
    object qImpOCUnitario: TFloatField
      FieldName = 'Unitario'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCDESCONTO_1: TFloatField
      FieldName = 'DESCONTO_1'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCTotal_1: TFloatField
      FieldName = 'Total_1'
      DisplayFormat = '###,###,##0.00'
    end
    object qImpOCTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qImpOCvalipi: TFloatField
      FieldName = 'valipi'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qImpOCformapgto: TWideStringField
      FieldName = 'formapgto'
      Size = 50
    end
    object qImpOCprevisao: TDateTimeField
      FieldName = 'previsao'
    end
    object qImpOCidtransp: TIntegerField
      FieldName = 'idtransp'
    end
    object qImpOCpIpi: TFloatField
      FieldName = 'pIpi'
      DisplayFormat = '###,###,###,#00.00'
    end
    object qImpOCvIpi: TFloatField
      FieldName = 'vIpi'
      DisplayFormat = '###,###,###,#00.00'
    end
    object qImpOCdesCP: TWideStringField
      FieldName = 'desCP'
      Size = 100
    end
    object qImpOCe_razao: TWideStringField
      FieldName = 'e_razao'
      Size = 60
    end
    object qImpOCe_fantasia: TWideStringField
      FieldName = 'e_fantasia'
      Size = 60
    end
    object qImpOCe_endereco: TWideStringField
      FieldName = 'e_endereco'
      Size = 40
    end
    object qImpOCe_num: TWideStringField
      FieldName = 'e_num'
      Size = 10
    end
    object qImpOCe_bairro: TWideStringField
      FieldName = 'e_bairro'
      Size = 25
    end
    object qImpOCe_cep: TWideStringField
      FieldName = 'e_cep'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object qImpOCe_cidade: TWideStringField
      FieldName = 'e_cidade'
      Size = 25
    end
    object qImpOCe_uf: TWideStringField
      FieldName = 'e_uf'
      Size = 2
    end
    object qImpOCe_cnpj: TWideStringField
      FieldName = 'e_cnpj'
      EditMask = '00.000.000/0000-00;0;_'
    end
    object qImpOCe_ie: TWideStringField
      FieldName = 'e_ie'
      EditMask = '000.000.000.000;0;_'
    end
    object qImpOCe_im: TWideStringField
      FieldName = 'e_im'
    end
    object qImpOCe_tel: TWideStringField
      FieldName = 'e_tel'
      EditMask = '(99) 999999999;0;_'
      Size = 30
    end
    object qImpOCe_mail: TWideStringField
      FieldName = 'e_mail'
      Size = 50
    end
    object qImpOCfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
    object qImpOCENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qImpOCnum: TWideStringField
      FieldName = 'num'
    end
    object qImpOCBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qImpOCCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object qImpOCCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qImpOCUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qImpOCCNPJ: TWideStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;0;_'
    end
    object qImpOCIE: TWideStringField
      FieldName = 'IE'
      EditMask = '000.000.000.000;0;_'
    end
    object qImpOCtel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99) 999999999;0;_'
    end
    object qImpOCEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qImpOCt_nome: TWideStringField
      FieldName = 't_nome'
      Size = 80
    end
    object qImpOCt_endereco: TWideStringField
      FieldName = 't_endereco'
      Size = 80
    end
    object qImpOCt_bairro: TWideStringField
      FieldName = 't_bairro'
      Size = 30
    end
    object qImpOCt_cep: TWideStringField
      FieldName = 't_cep'
      EditMask = '00000\-999;0;_'
      Size = 10
    end
    object qImpOCt_cidade: TWideStringField
      FieldName = 't_cidade'
      Size = 30
    end
    object qImpOCt_Uf: TWideStringField
      FieldName = 't_Uf'
      Size = 2
    end
    object qImpOCt_cnpj: TWideStringField
      FieldName = 't_cnpj'
      EditMask = '00.000.000/0000-00;0;_'
    end
    object qImpOCt_ie: TWideStringField
      FieldName = 't_ie'
      EditMask = '000.000.000.000;0;_'
    end
    object qImpOCt_telefone: TWideStringField
      FieldName = 't_telefone'
      EditMask = '(99) 999999999;0;_'
    end
    object qImpOCt_email: TWideStringField
      FieldName = 't_email'
      Size = 150
    end
    object qImpOCref: TIntegerField
      FieldName = 'ref'
      ReadOnly = True
    end
    object qImpOCun: TWideStringField
      FieldName = 'un'
      ReadOnly = True
      Size = 10
    end
  end
  object dImpOC: TDataSource
    DataSet = qImpOC
    Left = 488
    Top = 249
  end
  object VDODmPrinter1: TVDODmPrinter
    ShowDialog = True
    ShowPreview = False
    ShowProgress = True
    Title = 'ImpressaoPedido'
    CharMode = cmClear
    Font.Align = faLeft
    Font.FontType = ftDraft
    Font.NLQFont = ntSansSerif
    Font.Pitch = fp10cpp
    Font.Size = fsDefault
    Font.Style = []
    LineSpacing = ls6lpp
    LineSpacingCustomValue = 36
    Paper.AutoNewPage = False
    Paper.AutoNewPageLines = 3
    Paper.Columns = 80
    Paper.Lines = 72
    Paper.MarginLeft = 0
    Paper.MarginRight = 0
    Left = 480
    Top = 320
  end
  object qFormas: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from formas'
      'order by 1')
    Params = <>
    Left = 216
    Top = 484
    object qFormasId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qFormasDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object LogFinan: TZTable
    Connection = Conex
    TableName = 'log_finan'
    Left = 456
    Top = 453
    object LogFinanid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object LogFinandt: TWideStringField
      FieldName = 'dt'
    end
    object LogFinanhora: TWideStringField
      FieldName = 'hora'
      Size = 32
    end
    object LogFinanidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object LogFinanidmov: TIntegerField
      FieldName = 'idmov'
    end
    object LogFinantipo: TWideStringField
      FieldName = 'tipo'
      Size = 50
    end
    object LogFinanacao: TWideStringField
      FieldName = 'acao'
      Size = 100
    end
    object LogFinanmotivo: TWideStringField
      FieldName = 'motivo'
      Size = 100
    end
    object LogFinanidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object LogFinantipocliente: TWideStringField
      FieldName = 'tipocliente'
      Size = 1
    end
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 352
    Top = 8
  end
  object qSel: TZQuery
    Connection = Conex
    Params = <>
    Left = 888
    Top = 304
  end
  object qFecha: TZQuery
    Connection = Conex
    UpdateObject = uFecha
    OnNewRecord = qComiNewRecord
    SQL.Strings = (
      'select *'
      'from fechamento'
      'where id = 0')
    Params = <>
    Left = 888
    Top = 359
    object qFechaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFechaData: TWideStringField
      FieldName = 'Data'
    end
    object qFechaHora: TWideStringField
      FieldName = 'Hora'
      Size = 32
    end
    object qFechaIDMOV: TIntegerField
      FieldName = 'IDMOV'
    end
    object qFechaAbertura: TFloatField
      FieldName = 'Abertura'
    end
    object qFechaS_Din: TFloatField
      FieldName = 'S_Din'
    end
    object qFechaS_Che: TFloatField
      FieldName = 'S_Che'
    end
    object qFechaS_Deb: TFloatField
      FieldName = 'S_Deb'
    end
    object qFechaS_Cre: TFloatField
      FieldName = 'S_Cre'
    end
    object qFechaU_Din: TFloatField
      FieldName = 'U_Din'
    end
    object qFechaU_Che: TFloatField
      FieldName = 'U_Che'
    end
    object qFechaU_Deb: TFloatField
      FieldName = 'U_Deb'
    end
    object qFechaU_Cre: TFloatField
      FieldName = 'U_Cre'
    end
    object qFechaFechamento: TFloatField
      FieldName = 'Fechamento'
    end
    object qFechaDeixado: TFloatField
      FieldName = 'Deixado'
    end
    object qFechaCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object qFechas_depo: TFloatField
      FieldName = 's_depo'
    end
    object qFechau_depo: TFloatField
      FieldName = 'u_depo'
    end
  end
  object uFecha: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fechamento'
      'WHERE'
      '  fechamento.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO fechamento'
      
        '  (ID, Data, Hora, IDMOV, Abertura, S_Din, S_Che, S_Deb, S_Cre, ' +
        'U_Din, '
      
        '   U_Che, U_Deb, U_Cre, Fechamento, Deixado, CODEMP, s_depo, u_d' +
        'epo)'
      'VALUES'
      
        '  (:ID, :Data, :Hora, :IDMOV, :Abertura, :S_Din, :S_Che, :S_Deb,' +
        ' :S_Cre, '
      
        '   :U_Din, :U_Che, :U_Deb, :U_Cre, :Fechamento, :Deixado, :CODEM' +
        'P, :s_depo, '
      '   :u_depo)')
    ModifySQL.Strings = (
      'UPDATE fechamento SET'
      '  ID = :ID,'
      '  Data = :Data,'
      '  Hora = :Hora,'
      '  IDMOV = :IDMOV,'
      '  Abertura = :Abertura,'
      '  S_Din = :S_Din,'
      '  S_Che = :S_Che,'
      '  S_Deb = :S_Deb,'
      '  S_Cre = :S_Cre,'
      '  U_Din = :U_Din,'
      '  U_Che = :U_Che,'
      '  U_Deb = :U_Deb,'
      '  U_Cre = :U_Cre,'
      '  Fechamento = :Fechamento,'
      '  Deixado = :Deixado,'
      '  CODEMP = :CODEMP,'
      '  s_depo = :s_depo,'
      '  u_depo = :u_depo'
      'WHERE'
      '  fechamento.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 928
    Top = 359
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Abertura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'S_Din'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'S_Che'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'S_Deb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'S_Cre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'U_Din'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'U_Che'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'U_Deb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'U_Cre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fechamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Deixado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 's_depo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'u_depo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object tSH: TZTable
    Connection = Conex
    TableName = 'softhouse'
    Left = 776
    Top = 592
    object tSHCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object tSHI_ESTADUAL: TWideStringField
      FieldName = 'I_ESTADUAL'
      Required = True
      Size = 14
    end
    object tSHI_MUNICIPAL: TWideStringField
      FieldName = 'I_MUNICIPAL'
      Required = True
      Size = 14
    end
    object tSHRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 40
    end
    object tSHNOME_APLICACAO: TWideStringField
      FieldName = 'NOME_APLICACAO'
      Required = True
      Size = 40
    end
    object tSHNOME_EXECUTAVEL: TWideStringField
      FieldName = 'NOME_EXECUTAVEL'
      Required = True
      Size = 40
    end
    object tSHVERSAO: TWideStringField
      FieldName = 'VERSAO'
      Required = True
      Size = 10
    end
    object tSHMD5: TWideStringField
      FieldName = 'MD5'
      Required = True
      Size = 32
    end
    object tSHVERSAO_ROTEIRO: TWideStringField
      FieldName = 'VERSAO_ROTEIRO'
      Required = True
      Size = 4
    end
    object tSHCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Required = True
      Size = 40
    end
    object tSHNUM_LAUDO: TWideStringField
      FieldName = 'NUM_LAUDO'
      Required = True
      Size = 30
    end
    object tSHENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 50
    end
    object tSHTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 10
    end
    object tSHCIDADE: TWideStringField
      FieldName = 'CIDADE'
    end
    object tSHUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object tSHPERFIL_APRES: TWideStringField
      FieldName = 'PERFIL_APRES'
      Size = 1
    end
    object tSHIND_ATIVIDADE: TWideStringField
      FieldName = 'IND_ATIVIDADE'
      Size = 1
    end
    object tSHCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tSHBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
    end
    object tSHdataini: TDateTimeField
      FieldName = 'dataini'
    end
    object tSHhoraini: TWideStringField
      FieldName = 'horaini'
      Size = 32
    end
    object tSHnem_credenciamento: TWideStringField
      FieldName = 'nem_credenciamento'
      Size = 50
    end
    object tSHnum_credenciamento: TWideStringField
      FieldName = 'num_credenciamento'
      Size = 50
    end
    object tSHAssinaturaAC: TWideMemoField
      FieldName = 'AssinaturaAC'
      BlobType = ftWideMemo
    end
  end
  object ACBrSAT1: TACBrSAT
    Modelo = satDinamico_cdecl
    Extrato = ACBrSATExtratoFortes1
    NomeDLL = 'SAT.DLL'
    ArqLOG = 'SAT_log.txt'
    Config.infCFe_versaoDadosEnt = 0.070000000000000010
    Config.ide_numeroCaixa = 1
    Config.ide_tpAmb = taHomologacao
    Config.emit_cRegTrib = RTSimplesNacional
    Config.emit_cRegTribISSQN = RTISSMicroempresaMunicipal
    Config.emit_indRatISSQN = irNao
    Config.EhUTF8 = False
    Config.PaginaDeCodigo = 0
    Config.XmlSignLib = xsNone
    ConfigArquivos.SalvarCFe = True
    ConfigArquivos.SalvarCFeCanc = True
    ConfigArquivos.SepararPorMes = True
    ConfigArquivos.PrefixoArqCFe = 'CFe'
    ConfigArquivos.PrefixoArqCFeCanc = 'CFeC'
    Rede.tipoInter = infETHE
    Rede.seg = segNONE
    Rede.tipoLan = lanDHCP
    Rede.proxy = 0
    Rede.proxy_porta = 0
    OnGetcodigoDeAtivacao = ACBrSAT1GetcodigoDeAtivacao
    OnGetsignAC = ACBrSAT1GetsignAC
    Left = 840
    Top = 592
  end
  object ACBrSATExtratoFortes1: TACBrSATExtratoFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    Site = 'http://www.projetoacbr.com.br'
    MargemInferior = 4.000000000000000000
    MargemSuperior = 2.000000000000000000
    MargemEsquerda = 2.000000000000000000
    MargemDireita = 2.000000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrSAT = ACBrSAT1
    MsgAppQRCode = 
      'Consulte o QR Code pelo aplicativo  "De olho na nota", dispon'#237've' +
      'l na AppStore (Apple) e PlayStore (Android)'
    FormularioContinuo = True
    Left = 912
    Top = 592
  end
  object qEmp: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select * from empresa'
      'where id = :emp'
      'order by id, empresa_padrao desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 824
    Top = 660
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qEmpid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qEmpRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Size = 60
    end
    object qEmpCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object qEmpENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qEmpBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qEmpCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 25
    end
    object qEmpUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qEmpCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qEmpSITE: TWideStringField
      FieldName = 'SITE'
      Size = 50
    end
    object qEmpEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qEmpRESPONS: TWideStringField
      FieldName = 'RESPONS'
      Size = 40
    end
    object qEmpTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 30
    end
    object qEmpFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qEmplogo: TWideStringField
      FieldName = 'logo'
      Size = 150
    end
    object qEmpex: TWideStringField
      FieldName = 'ex'
      Size = 1
    end
    object qEmpfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qEmpnum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object qEmpidCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object qEmpIE: TWideStringField
      FieldName = 'IE'
    end
    object qEmpOBSNF: TWideMemoField
      FieldName = 'OBSNF'
      BlobType = ftWideMemo
    end
    object qEmpESPECIE: TWideStringField
      FieldName = 'ESPECIE'
    end
    object qEmpMARCA: TWideStringField
      FieldName = 'MARCA'
    end
    object qEmpSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qEmpTPEMPRESANFE: TIntegerField
      FieldName = 'TPEMPRESANFE'
    end
    object qEmpNFE_DUPLICATA: TWideStringField
      FieldName = 'NFE_DUPLICATA'
      Required = True
      Size = 1
    end
    object qEmpNFE: TWideStringField
      FieldName = 'NFE'
      Required = True
      Size = 1
    end
    object qEmpCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qEmpCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object qEmpCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 3
    end
    object qEmpNFE_RAVE: TWideStringField
      FieldName = 'NFE_RAVE'
      Size = 255
    end
    object qEmpNFE_NUMSERIE: TWideStringField
      FieldName = 'NFE_NUMSERIE'
      Size = 100
    end
    object qEmpNFE_EMAIL: TWideStringField
      FieldName = 'NFE_EMAIL'
      Size = 100
    end
    object qEmpNFE_SENHA: TWideStringField
      FieldName = 'NFE_SENHA'
      Size = 50
    end
    object qEmpNFE_ASSUNTO: TWideStringField
      FieldName = 'NFE_ASSUNTO'
      Size = 100
    end
    object qEmpNFE_CORPOMSG: TWideMemoField
      FieldName = 'NFE_CORPOMSG'
      BlobType = ftWideMemo
    end
    object qEmpNFE_DANFE: TWideStringField
      FieldName = 'NFE_DANFE'
      Size = 255
    end
    object qEmpNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 255
    end
    object qEmpNFE_CANCELADA: TWideMemoField
      FieldName = 'NFE_CANCELADA'
      BlobType = ftWideMemo
    end
    object qEmpNFE_COPIAEMAIL: TWideStringField
      FieldName = 'NFE_COPIAEMAIL'
      Size = 100
    end
    object qEmpTIPO_EMPRESA: TWideStringField
      FieldName = 'TIPO_EMPRESA'
      Required = True
      Size = 1
    end
    object qEmpTIPOIMP_NFE: TWideStringField
      FieldName = 'TIPOIMP_NFE'
      Required = True
      Size = 1
    end
    object qEmpSIMPLESN_FAIXA: TIntegerField
      FieldName = 'SIMPLESN_FAIXA'
    end
    object qEmpSIMPLESN_TIPO: TWideStringField
      FieldName = 'SIMPLESN_TIPO'
      Size = 1
    end
    object qEmpDEST_IMPOSTOS: TWideStringField
      FieldName = 'DEST_IMPOSTOS'
      Required = True
      Size = 1
    end
    object qEmpMOSTRA_FONTEIBPT: TWideStringField
      FieldName = 'MOSTRA_FONTEIBPT'
      Required = True
      Size = 1
    end
    object qEmpSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 150
    end
    object qEmpPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qEmpEMAIL_SSL: TWideStringField
      FieldName = 'EMAIL_SSL'
      Required = True
      Size = 1
    end
    object qEmpEMAIL_TLS: TWideStringField
      FieldName = 'EMAIL_TLS'
      Size = 1
    end
    object qEmpNT003: TWideStringField
      FieldName = 'NT003'
      Size = 1
    end
    object qEmpNTCEST: TWideStringField
      FieldName = 'NTCEST'
      Size = 1
    end
    object qEmpPICMSINTERDEST: TFloatField
      FieldName = 'PICMSINTERDEST'
    end
    object qEmpCSC: TWideStringField
      FieldName = 'CSC'
      Size = 255
    end
    object qEmpIDCSC: TWideStringField
      FieldName = 'IDCSC'
      Size = 255
    end
    object qEmpMOSTRA_ST: TWideStringField
      FieldName = 'MOSTRA_ST'
      Required = True
      Size = 1
    end
    object qEmpPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object qEmpTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object qEmpiduf: TIntegerField
      FieldName = 'iduf'
    end
    object qEmpNF_IMPOSTOPORNCM: TWideStringField
      FieldName = 'NF_IMPOSTOPORNCM'
      Required = True
      Size = 1
    end
    object qEmpemail_contador: TWideStringField
      FieldName = 'email_contador'
      Size = 150
    end
    object qEmptpAmbiente: TWideStringField
      FieldName = 'tpAmbiente'
      Required = True
      Size = 1
    end
    object qEmpnf_msgAproveitCredito: TWideStringField
      FieldName = 'nf_msgAproveitCredito'
      Required = True
      Size = 1
    end
    object qEmpnf_cfopprod_puxar_NF: TWideStringField
      FieldName = 'nf_cfopprod_puxar_NF'
      Required = True
      Size = 1
    end
    object qEmpempresa_padrao: TWideStringField
      FieldName = 'empresa_padrao'
      Required = True
      Size = 1
    end
    object qEmprem_email: TWideStringField
      FieldName = 'rem_email'
      Size = 150
    end
    object qEmprem_senha: TWideStringField
      FieldName = 'rem_senha'
      Size = 50
    end
    object qEmprem_smtp: TWideStringField
      FieldName = 'rem_smtp'
      Size = 150
    end
    object qEmprem_porta: TIntegerField
      FieldName = 'rem_porta'
    end
    object qEmprem_ssl: TWideStringField
      FieldName = 'rem_ssl'
      Size = 1
    end
    object qEmprem_tls: TWideStringField
      FieldName = 'rem_tls'
      Size = 1
    end
    object qEmpim: TWideStringField
      FieldName = 'im'
    end
    object qEmpauto_acesso_xml: TWideStringField
      FieldName = 'auto_acesso_xml'
    end
    object qEmprep_cfop_d: TIntegerField
      FieldName = 'rep_cfop_d'
    end
    object qEmprep_cfop_f: TIntegerField
      FieldName = 'rep_cfop_f'
    end
    object qEmprep_csosn: TIntegerField
      FieldName = 'rep_csosn'
    end
    object qEmpmdfe_serie: TWideStringField
      FieldName = 'mdfe_serie'
      Size = 10
    end
    object qEmpmdfe_xml: TWideStringField
      FieldName = 'mdfe_xml'
      Size = 100
    end
    object qEmpmdfe_danfe: TWideStringField
      FieldName = 'mdfe_danfe'
      Size = 100
    end
    object qEmpsalvarcfes: TWideStringField
      FieldName = 'salvarcfes'
      Size = 1
    end
    object qEmpmodeloSat: TWideStringField
      FieldName = 'modeloSat'
      Size = 1
    end
    object qEmpCodigoAtivacaoSat: TWideStringField
      FieldName = 'CodigoAtivacaoSat'
      Size = 50
    end
    object qEmpCFe_largura: TIntegerField
      FieldName = 'CFe_largura'
    end
    object qEmpCFe_copias: TIntegerField
      FieldName = 'CFe_copias'
    end
    object qEmpCFe_visualiza: TWideStringField
      FieldName = 'CFe_visualiza'
      Size = 1
    end
    object qEmpCFe_logo: TWideStringField
      FieldName = 'CFe_logo'
      Size = 200
    end
    object qEmpnome_dll_sat: TWideStringField
      FieldName = 'nome_dll_sat'
      Size = 30
    end
    object qEmpcfe_segundavia: TWideStringField
      FieldName = 'cfe_segundavia'
      ReadOnly = True
      Size = 1
    end
  end
  object qProcSA: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select processo_SA.* '
      'from processo_SA'
      'where processo_SA.idSemiAcabado = :IDs'
      'order by processo_SA.ordem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 612
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    object qProcSAId: TIntegerField
      FieldName = 'Id'
    end
    object qProcSAIdProcesso: TIntegerField
      FieldName = 'IdProcesso'
    end
    object qProcSADescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qProcSAIdSemiAcabado: TIntegerField
      FieldName = 'IdSemiAcabado'
    end
    object qProcSAUltimo: TWideStringField
      FieldName = 'Ultimo'
      Size = 1
    end
    object qProcSAOrdem: TIntegerField
      FieldName = 'Ordem'
    end
    object qProcSATempo: TWideStringField
      FieldName = 'Tempo'
      EditMask = '!90:00:00;1;_'
      Size = 32
    end
    object qProcSACusto: TFloatField
      FieldName = 'Custo'
      DisplayFormat = '###,###,##0.0000000'
    end
    object qProcSADepende_Ant: TWideStringField
      FieldName = 'Depende_Ant'
      Size = 1
    end
  end
  object qProcItemSA: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      ' processo_SA_I.*, '
      'case when processo_SA_I.tipo = '#39'M'#39' then '
      '     produto.descricao else sa.descricao end descricao,'
      'produto.precocompra,'
      
        'coalesce(processo_SA_I.qtde,0) * coalesce(produto.precocompra,0)' +
        ' tot'
      ''
      ''
      'from processo_SA_I'
      
        'left join produto on processo_SA_I.idproduto = produto.id and pr' +
        'oduto.tipo='#39'M'#39
      
        'left join semi_acabado sa on processo_SA_I.idproduto = sa.id and' +
        ' processo_SA_I.tipo='#39'S'#39
      ''
      ''
      ''
      
        'where processo_SA_I.idProcesso_sa > 0 and  processo_SA_I.idProce' +
        'sso_sa = :IDp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDp'
        ParamType = ptUnknown
      end>
    Left = 97
    Top = 611
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDp'
        ParamType = ptUnknown
      end>
    object qProcItemSAId: TIntegerField
      FieldName = 'Id'
    end
    object qProcItemSAIdProcesso_sa: TIntegerField
      FieldName = 'IdProcesso_sa'
    end
    object qProcItemSAIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qProcItemSAQtde: TFloatField
      FieldName = 'Qtde'
      DisplayFormat = '###,###,##0.0000000'
    end
    object qProcItemSAUn: TWideStringField
      FieldName = 'Un'
      Size = 10
    end
    object qProcItemSAdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qProcItemSAprecocompra: TFloatField
      FieldName = 'precocompra'
      DisplayFormat = '#0.0000000'
    end
    object qProcItemSAtot: TFloatField
      FieldName = 'tot'
      ReadOnly = True
      DisplayFormat = '#0.0000000'
    end
    object qProcItemSAtipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
  end
  object qFicha: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select '
      '  case '
      '      when ficha_tecnica.tipo =  '#39'M'#39' then '
      '           produto.descricao '
      '      when ficha_tecnica.tipo =  '#39'P'#39' then '
      '           pp.descricao '
      '     when ficha_tecnica.tipo =  '#39'S'#39' then '
      '          semi_acabado.descricao'
      '  end descr,'
      ''
      '  case ficha_tecnica.tipo'
      '       when '#39'P'#39' then '#39'PR'#39' '
      '       when '#39'M'#39' then '#39'MP'#39' '
      '       when '#39'S'#39' then '#39'SA'#39
      ' end Tipo2, '
      ''
      ' case ficha_tecnica.tipo'
      '       when '#39'P'#39' then (ficha_tecnica.quantidade *  pp.custofinal)'
      
        '       when '#39'M'#39' then (ficha_tecnica.quantidade *  (coalesce(prod' +
        'uto.ft_conv_qtde, 1)*produto.precocompra) )'
      
        '       when '#39'S'#39' then  (ficha_tecnica.quantidade *  semi_acabado.' +
        'totmp)'
      ' end totmp, '
      ''
      ''
      '  case ficha_tecnica.tipo'
      '       when '#39'P'#39' then 0'
      '       when '#39'M'#39' then 0'
      
        '       when '#39'S'#39' then  (ficha_tecnica.quantidade *  semi_acabado.' +
        'totprocesso)'
      ' end  totprocesso,  '
      'ficha_tecnica.*'
      ''
      'from ficha_tecnica'
      
        'left join produto on ficha_tecnica.iditem = produto.id and ficha' +
        '_tecnica.tipo = '#39'M'#39' '
      
        'left join produto pp on ficha_tecnica.iditem = pp.id and ficha_t' +
        'ecnica.tipo = '#39'P'#39
      
        'left join semi_acabado on ficha_tecnica.iditem  = semi_acabado.i' +
        'd and ficha_tecnica.tipo = '#39'S'#39
      'where ficha_tecnica.idproduto = :ID'
      'order by 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    Left = 178
    Top = 616
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qFichaId: TIntegerField
      FieldName = 'Id'
    end
    object qFichaIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qFichaQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = '###,###,###,##0.00000'
    end
    object qFichadescr: TWideStringField
      FieldName = 'descr'
      Size = 150
    end
    object qFichaTipo2: TWideStringField
      FieldName = 'Tipo2'
      Size = 2
    end
    object qFichaIdItem: TIntegerField
      FieldName = 'IdItem'
    end
    object qFichaTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qFichaUnidade: TWideStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object qFichatotmp: TFloatField
      FieldName = 'totmp'
      DisplayFormat = '#0.000000'
    end
    object qFichatotprocesso: TFloatField
      FieldName = 'totprocesso'
      DisplayFormat = '#0.000000'
    end
  end
  object qProduto: TZQuery
    Connection = Conex
    UpdateObject = uProduto
    OnNewRecord = CPagNewRecord
    SQL.Strings = (
      'select * from produto'
      'where id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 256
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qProdutoId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qProdutodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qProdutotipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object qProdutoest_seguranca: TFloatField
      FieldName = 'est_seguranca'
    end
    object qProdutoest_minimo: TFloatField
      FieldName = 'est_minimo'
    end
    object qProdutoft_conv_un: TWideStringField
      FieldName = 'ft_conv_un'
      Size = 10
    end
    object qProdutoft_conv_qtde: TFloatField
      FieldName = 'ft_conv_qtde'
    end
    object qProdutoft_conv_2un: TWideStringField
      FieldName = 'ft_conv_2un'
      Size = 10
    end
    object qProdutoproduzido: TWideStringField
      FieldName = 'produzido'
      Size = 1
    end
    object qProdutobarras: TWideStringField
      FieldName = 'barras'
    end
    object qProdutoreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object qProdutovalor: TFloatField
      FieldName = 'valor'
    end
    object qProdutoqtdestoque: TFloatField
      FieldName = 'qtdestoque'
    end
    object qProdutoCusto_montagem: TFloatField
      FieldName = 'Custo_montagem'
    end
    object qProdutocod_Manual: TIntegerField
      FieldName = 'cod_Manual'
    end
    object qProdutocest: TWideStringField
      FieldName = 'cest'
      Size = 10
    end
    object qProdutoNCM: TWideStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qProdutoeIPI: TWideStringField
      FieldName = 'eIPI'
      Size = 10
    end
    object qProdutoobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qProdutoPrecoCompra: TFloatField
      FieldName = 'PrecoCompra'
    end
    object qProdutoIcms: TFloatField
      FieldName = 'Icms'
    end
    object qProdutoPIS: TWideStringField
      FieldName = 'PIS'
      Size = 5
    end
    object qProdutopPIS: TFloatField
      FieldName = 'pPIS'
    end
    object qProdutoCOFINS: TWideStringField
      FieldName = 'COFINS'
      Size = 5
    end
    object qProdutopCOFINS: TFloatField
      FieldName = 'pCOFINS'
    end
    object qProdutoIPI: TWideStringField
      FieldName = 'IPI'
      Size = 5
    end
    object qProdutopIPI: TFloatField
      FieldName = 'pIPI'
    end
    object qProdutocsosn: TWideStringField
      FieldName = 'csosn'
      Size = 3
    end
    object qProdutocfop: TWideStringField
      FieldName = 'cfop'
      Size = 4
    end
    object qProdutocfop_fora: TWideStringField
      FieldName = 'cfop_fora'
      Size = 4
    end
    object qProdutomargem: TFloatField
      FieldName = 'margem'
    end
    object qProdutoex: TIntegerField
      FieldName = 'ex'
      Required = True
    end
    object qProdutoidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object qProdutoRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object qProdutoIDSTRIB: TIntegerField
      FieldName = 'IDSTRIB'
    end
    object qProdutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qProdutoMARGEMST: TFloatField
      FieldName = 'MARGEMST'
    end
    object qProdutoST: TFloatField
      FieldName = 'ST'
    end
    object qProdutoST2: TFloatField
      FieldName = 'ST2'
    end
    object qProdutoCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 10
    end
    object qProdutoMVA: TFloatField
      FieldName = 'MVA'
    end
    object qProdutoCODIPI: TWideStringField
      FieldName = 'CODIPI'
      Size = 10
    end
    object qProdutoIDTIPO_TRIBUTACAO: TIntegerField
      FieldName = 'IDTIPO_TRIBUTACAO'
    end
    object qProdutoIDORIGEM: TIntegerField
      FieldName = 'IDORIGEM'
    end
    object qProdutounidade_nfe: TWideStringField
      FieldName = 'unidade_nfe'
      Required = True
      Size = 10
    end
    object qProdutovalor2: TFloatField
      FieldName = 'valor2'
    end
    object qProdutopesoLiq: TFloatField
      FieldName = 'pesoLiq'
    end
    object qProdutopesobru: TFloatField
      FieldName = 'pesobru'
    end
    object qProdutomultiplo: TFloatField
      FieldName = 'multiplo'
    end
    object qProdutocubagem: TFloatField
      FieldName = 'cubagem'
    end
    object qProdutoDUN14: TWideStringField
      FieldName = 'DUN14'
    end
    object qProdutoCustoProcesso: TFloatField
      FieldName = 'CustoProcesso'
    end
    object qProdutoCustoMP: TFloatField
      FieldName = 'CustoMP'
    end
    object qProdutoCustoproducao: TFloatField
      FieldName = 'Custoproducao'
    end
    object qProdutoCustoOperacional: TFloatField
      FieldName = 'CustoOperacional'
    end
    object qProdutoCustoFinal: TFloatField
      FieldName = 'CustoFinal'
    end
    object qProdutoVendaSugerido: TFloatField
      FieldName = 'VendaSugerido'
    end
    object qProdutoIdCxMaster: TIntegerField
      FieldName = 'IdCxMaster'
    end
    object qProdutoEmbalagem: TWideStringField
      FieldName = 'Embalagem'
      Size = 1
    end
    object qProdutoaltura: TFloatField
      FieldName = 'altura'
    end
    object qProdutolargura: TFloatField
      FieldName = 'largura'
    end
    object qProdutocomprimento: TFloatField
      FieldName = 'comprimento'
    end
    object qProdutoidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qProdutosincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qProdutocustoCxMaster: TFloatField
      FieldName = 'custoCxMaster'
    end
    object qProdutomaxDesconto: TFloatField
      FieldName = 'maxDesconto'
    end
    object qProdutocst: TWideStringField
      FieldName = 'cst'
      Size = 10
    end
    object qProdutoidgrupo: TIntegerField
      FieldName = 'idgrupo'
    end
    object qProdutomateria_prima: TWideStringField
      FieldName = 'materia_prima'
      Required = True
      Size = 1
    end
    object qProdutodivisor: TFloatField
      FieldName = 'divisor'
    end
    object qProdutonao_vender_web: TWideStringField
      FieldName = 'nao_vender_web'
      Required = True
      Size = 1
    end
    object qProdutoalturaCx: TFloatField
      FieldName = 'alturaCx'
    end
    object qProdutolarguraCx: TFloatField
      FieldName = 'larguraCx'
    end
    object qProdutocomprimentoCx: TFloatField
      FieldName = 'comprimentoCx'
    end
    object qProdutobx_item_ficha_venda: TWideStringField
      FieldName = 'bx_item_ficha_venda'
      Required = True
      Size = 1
    end
    object qProdutototprocesso: TFloatField
      FieldName = 'totprocesso'
    end
    object qProdutototmp: TFloatField
      FieldName = 'totmp'
    end
    object qProdutocusto_total: TFloatField
      FieldName = 'custo_total'
    end
    object qProdutoativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
  end
  object uProduto: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM produto'
      'WHERE'
      '  produto.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO produto'
      
        '  (Id, descricao, tipo, est_seguranca, est_minimo, ft_conv_un, f' +
        't_conv_qtde, '
      
        '   ft_conv_2un, produzido, barras, referencia, valor, qtdestoque' +
        ', Custo_montagem, '
      
        '   cod_Manual, cest, NCM, eIPI, obs, PrecoCompra, Icms, PIS, pPI' +
        'S, COFINS, '
      
        '   pCOFINS, IPI, pIPI, csosn, cfop, cfop_fora, margem, ex, idfor' +
        'necedor, '
      
        '   Royalties, IDSTRIB, REDUCAO, MARGEMST, ST, ST2, CSOSN2, MVA, ' +
        'CODIPI, '
      
        '   IDTIPO_TRIBUTACAO, IDORIGEM, unidade_nfe, valor2, pesoLiq, pe' +
        'sobru, '
      
        '   multiplo, cubagem, DUN14, CustoProcesso, CustoMP, Custoproduc' +
        'ao, CustoOperacional, '
      
        '   CustoFinal, VendaSugerido, IdCxMaster, Embalagem, altura, lar' +
        'gura, comprimento, '
      
        '   idweb, sincronizado, custoCxMaster, maxDesconto, cst, idgrupo' +
        ', materia_prima, '
      
        '   divisor, nao_vender_web, alturaCx, larguraCx, comprimentoCx, ' +
        'bx_item_ficha_venda, '
      '   totprocesso, totmp, custo_total, ativo)'
      'VALUES'
      
        '  (:Id, :descricao, :tipo, :est_seguranca, :est_minimo, :ft_conv' +
        '_un, :ft_conv_qtde, '
      
        '   :ft_conv_2un, :produzido, :barras, :referencia, :valor, :qtde' +
        'stoque, '
      
        '   :Custo_montagem, :cod_Manual, :cest, :NCM, :eIPI, :obs, :Prec' +
        'oCompra, '
      
        '   :Icms, :PIS, :pPIS, :COFINS, :pCOFINS, :IPI, :pIPI, :csosn, :' +
        'cfop, :cfop_fora, '
      
        '   :margem, :ex, :idfornecedor, :Royalties, :IDSTRIB, :REDUCAO, ' +
        ':MARGEMST, '
      
        '   :ST, :ST2, :CSOSN2, :MVA, :CODIPI, :IDTIPO_TRIBUTACAO, :IDORI' +
        'GEM, :unidade_nfe, '
      
        '   :valor2, :pesoLiq, :pesobru, :multiplo, :cubagem, :DUN14, :Cu' +
        'stoProcesso, '
      
        '   :CustoMP, :Custoproducao, :CustoOperacional, :CustoFinal, :Ve' +
        'ndaSugerido, '
      
        '   :IdCxMaster, :Embalagem, :altura, :largura, :comprimento, :id' +
        'web, :sincronizado, '
      
        '   :custoCxMaster, :maxDesconto, :cst, :idgrupo, :materia_prima,' +
        ' :divisor, '
      
        '   :nao_vender_web, :alturaCx, :larguraCx, :comprimentoCx, :bx_i' +
        'tem_ficha_venda, '
      '   :totprocesso, :totmp, :custo_total, :ativo)')
    ModifySQL.Strings = (
      'UPDATE produto SET'
      '  Id = :Id,'
      '  descricao = :descricao,'
      '  tipo = :tipo,'
      '  est_seguranca = :est_seguranca,'
      '  est_minimo = :est_minimo,'
      '  ft_conv_un = :ft_conv_un,'
      '  ft_conv_qtde = :ft_conv_qtde,'
      '  ft_conv_2un = :ft_conv_2un,'
      '  produzido = :produzido,'
      '  barras = :barras,'
      '  referencia = :referencia,'
      '  valor = :valor,'
      '  qtdestoque = :qtdestoque,'
      '  Custo_montagem = :Custo_montagem,'
      '  cod_Manual = :cod_Manual,'
      '  cest = :cest,'
      '  NCM = :NCM,'
      '  eIPI = :eIPI,'
      '  obs = :obs,'
      '  PrecoCompra = :PrecoCompra,'
      '  Icms = :Icms,'
      '  PIS = :PIS,'
      '  pPIS = :pPIS,'
      '  COFINS = :COFINS,'
      '  pCOFINS = :pCOFINS,'
      '  IPI = :IPI,'
      '  pIPI = :pIPI,'
      '  csosn = :csosn,'
      '  cfop = :cfop,'
      '  cfop_fora = :cfop_fora,'
      '  margem = :margem,'
      '  ex = :ex,'
      '  idfornecedor = :idfornecedor,'
      '  Royalties = :Royalties,'
      '  IDSTRIB = :IDSTRIB,'
      '  REDUCAO = :REDUCAO,'
      '  MARGEMST = :MARGEMST,'
      '  ST = :ST,'
      '  ST2 = :ST2,'
      '  CSOSN2 = :CSOSN2,'
      '  MVA = :MVA,'
      '  CODIPI = :CODIPI,'
      '  IDTIPO_TRIBUTACAO = :IDTIPO_TRIBUTACAO,'
      '  IDORIGEM = :IDORIGEM,'
      '  unidade_nfe = :unidade_nfe,'
      '  valor2 = :valor2,'
      '  pesoLiq = :pesoLiq,'
      '  pesobru = :pesobru,'
      '  multiplo = :multiplo,'
      '  cubagem = :cubagem,'
      '  DUN14 = :DUN14,'
      '  CustoProcesso = :CustoProcesso,'
      '  CustoMP = :CustoMP,'
      '  Custoproducao = :Custoproducao,'
      '  CustoOperacional = :CustoOperacional,'
      '  CustoFinal = :CustoFinal,'
      '  VendaSugerido = :VendaSugerido,'
      '  IdCxMaster = :IdCxMaster,'
      '  Embalagem = :Embalagem,'
      '  altura = :altura,'
      '  largura = :largura,'
      '  comprimento = :comprimento,'
      '  idweb = :idweb,'
      '  sincronizado = :sincronizado,'
      '  custoCxMaster = :custoCxMaster,'
      '  maxDesconto = :maxDesconto,'
      '  cst = :cst,'
      '  idgrupo = :idgrupo,'
      '  materia_prima = :materia_prima,'
      '  divisor = :divisor,'
      '  nao_vender_web = :nao_vender_web,'
      '  alturaCx = :alturaCx,'
      '  larguraCx = :larguraCx,'
      '  comprimentoCx = :comprimentoCx,'
      '  bx_item_ficha_venda = :bx_item_ficha_venda,'
      '  totprocesso = :totprocesso,'
      '  totmp = :totmp,'
      '  custo_total = :custo_total,'
      '  ativo = :ativo'
      'WHERE'
      '  produto.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 296
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_seguranca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_minimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ft_conv_un'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ft_conv_qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ft_conv_2un'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produzido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'barras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdestoque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Custo_montagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_Manual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cest'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'eIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PrecoCompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Icms'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pPIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COFINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pCOFINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'csosn'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfop_fora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'margem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Royalties'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDSTRIB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REDUCAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARGEMST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ST2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSOSN2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTIPO_TRIBUTACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDORIGEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade_nfe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesoLiq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesobru'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'multiplo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cubagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DUN14'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoProcesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Custoproducao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoOperacional'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoFinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VendaSugerido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCxMaster'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embalagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'altura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'largura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comprimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'custoCxMaster'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'maxDesconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cst'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'materia_prima'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'divisor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nao_vender_web'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'alturaCx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'larguraCx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comprimentoCx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bx_item_ficha_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totprocesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'custo_total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object qMP: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select id, descricao, precocompra'
      'from produto'
      'where tipo = '#39'M'#39' and ex = 0 and embalagem = '#39'S'#39
      'order by descricao')
    Params = <>
    Left = 350
    Top = 607
    object qMPid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qMPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qMPprecocompra: TFloatField
      FieldName = 'precocompra'
    end
  end
  object dIns: TDataSource
    DataSet = qIns
    Left = 171
    Top = 74
  end
  object dSel: TDataSource
    DataSet = qSel
    Left = 933
    Top = 304
  end
  object qProTotal: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select id from produto'
      'where tipo = '#39'P'#39)
    Params = <>
    Left = 314
    Top = 688
    object qProTotalid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object qMPTotal: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select id from produto where tipo = '#39'M'#39)
    Params = <>
    Left = 210
    Top = 688
    object qMPTotalid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object qSATotal: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select id from semi_acabado')
    Params = <>
    Left = 258
    Top = 680
    object qSATotalid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object qCpagarCompra: TZQuery
    Connection = Conex
    UpdateObject = uCPagarCompra
    OnNewRecord = qCPagarNewRecord
    SQL.Strings = (
      'select cpagar.* from CPagar')
    Params = <>
    Left = 200
    Top = 563
    object qCpagarCompraId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qCpagarCompraEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object qCpagarCompraIdFornecedor: TIntegerField
      FieldName = 'IdFornecedor'
    end
    object qCpagarCompraDocumento: TWideStringField
      FieldName = 'Documento'
    end
    object qCpagarCompraVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object qCpagarCompraValor: TFloatField
      FieldName = 'Valor'
    end
    object qCpagarCompraBaixa: TWideStringField
      FieldName = 'Baixa'
      Size = 1
    end
    object qCpagarCompraidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object qCpagarCompraDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object qCpagarCompraValPago: TFloatField
      FieldName = 'ValPago'
    end
    object qCpagarCompraidSubOP_P: TIntegerField
      FieldName = 'idSubOP_P'
    end
    object qCpagarCompraIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qCpagarCompraEx: TIntegerField
      FieldName = 'Ex'
    end
    object qCpagarCompraidOP_M: TIntegerField
      FieldName = 'idOP_M'
    end
    object qCpagarCompraValorfpgto: TFloatField
      FieldName = 'Valorfpgto'
    end
    object qCpagarCompraValorfpgto2: TFloatField
      FieldName = 'Valorfpgto2'
    end
    object qCpagarCompraidcondpgto: TIntegerField
      FieldName = 'idcondpgto'
    end
    object qCpagarCompraobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qCpagarCompraTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qCpagarComprax: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qCpagarCompraIdCompra: TIntegerField
      FieldName = 'IdCompra'
    end
    object qCpagarCompraFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qCpagarCompraFpgto2: TWideStringField
      FieldName = 'Fpgto2'
      Size = 50
    end
    object qCpagarComprajuros: TFloatField
      FieldName = 'juros'
    end
    object qCpagarCompradesconto: TFloatField
      FieldName = 'desconto'
    end
    object qCpagarCompratotal: TFloatField
      FieldName = 'total'
    end
    object qCpagarCompraidcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object qCpagarCompraidnf: TIntegerField
      FieldName = 'idnf'
    end
    object qCpagarCompraidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qCpagarCompraped_nota: TIntegerField
      FieldName = 'ped_nota'
    end
    object qCpagarCompradoc_bx_parcial: TWideStringField
      FieldName = 'doc_bx_parcial'
    end
    object qCpagarCompratipoFinan: TWideStringField
      FieldName = 'tipoFinan'
      Required = True
      Size = 1
    end
    object qCpagarCompraidBaixa2: TIntegerField
      FieldName = 'idBaixa2'
    end
  end
  object uCPagarCompra: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM CPagar'
      'WHERE'
      '  CPagar.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO CPagar'
      
        '  (Id, Emissao, IdFornecedor, Documento, Venci, Valor, Baixa, id' +
        'Baixa, '
      
        '   DtPagto, ValPago, idSubOP_P, IdUsuario, Ex, idOP_M, Valorfpgt' +
        'o, Valorfpgto2, '
      
        '   idcondpgto, obs, Tipo, x, IdCompra, Fpgto, Fpgto2, juros, des' +
        'conto, '
      
        '   total, idcusto, idnf, idemp, ped_nota, doc_bx_parcial, tipoFi' +
        'nan, idBaixa2)'
      'VALUES'
      
        '  (:Id, :Emissao, :IdFornecedor, :Documento, :Venci, :Valor, :Ba' +
        'ixa, :idBaixa, '
      
        '   :DtPagto, :ValPago, :idSubOP_P, :IdUsuario, :Ex, :idOP_M, :Va' +
        'lorfpgto, '
      
        '   :Valorfpgto2, :idcondpgto, :obs, :Tipo, :x, :IdCompra, :Fpgto' +
        ', :Fpgto2, '
      
        '   :juros, :desconto, :total, :idcusto, :idnf, :idemp, :ped_nota' +
        ', :doc_bx_parcial, '
      '   :tipoFinan, :idBaixa2)')
    ModifySQL.Strings = (
      'UPDATE CPagar SET'
      '  Id = :Id,'
      '  Emissao = :Emissao,'
      '  IdFornecedor = :IdFornecedor,'
      '  Documento = :Documento,'
      '  Venci = :Venci,'
      '  Valor = :Valor,'
      '  Baixa = :Baixa,'
      '  idBaixa = :idBaixa,'
      '  DtPagto = :DtPagto,'
      '  ValPago = :ValPago,'
      '  idSubOP_P = :idSubOP_P,'
      '  IdUsuario = :IdUsuario,'
      '  Ex = :Ex,'
      '  idOP_M = :idOP_M,'
      '  Valorfpgto = :Valorfpgto,'
      '  Valorfpgto2 = :Valorfpgto2,'
      '  idcondpgto = :idcondpgto,'
      '  obs = :obs,'
      '  Tipo = :Tipo,'
      '  x = :x,'
      '  IdCompra = :IdCompra,'
      '  Fpgto = :Fpgto,'
      '  Fpgto2 = :Fpgto2,'
      '  juros = :juros,'
      '  desconto = :desconto,'
      '  total = :total,'
      '  idcusto = :idcusto,'
      '  idnf = :idnf,'
      '  idemp = :idemp,'
      '  ped_nota = :ped_nota,'
      '  doc_bx_parcial = :doc_bx_parcial,'
      '  tipoFinan = :tipoFinan,'
      '  idBaixa2 = :idBaixa2'
      'WHERE'
      '  CPagar.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 248
    Top = 563
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtPagto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ValPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSubOp_P'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idOP_M'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valorfpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fpgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ped_nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'doc_bx_parcial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoFinan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBaixa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object qParam: TZQuery
    Connection = Conex
    UpdateObject = uParam
    BeforePost = Bol_disBeforePost
    OnNewRecord = Bol_disNewRecord
    SQL.Strings = (
      'select * from parametro')
    Params = <>
    Left = 560
    Top = 580
    object qParamsicredi_n: TIntegerField
      FieldName = 'sicredi_n'
    end
    object qParamsicredi_b: TIntegerField
      FieldName = 'sicredi_b'
    end
  end
  object uParam: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM parametro'
      'WHERE'
      '  parametro.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO parametro'
      '  (sicredi_n, sicredi_b)'
      'VALUES'
      '  (:sicredi_n, :sicredi_b)')
    ModifySQL.Strings = (
      'UPDATE parametro SET'
      '  sicredi_n = :sicredi_n,'
      '  sicredi_b = :sicredi_b'
      'WHERE'
      '  parametro.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 608
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sicredi_n'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sicredi_b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object uCRec: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM creceber'
      'WHERE'
      '  creceber.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO creceber'
      '  (nn_sicred)'
      'VALUES'
      '  (:nn_sicred)')
    ModifySQL.Strings = (
      'UPDATE creceber SET'
      '  nn_sicred = :nn_sicred'
      'WHERE'
      '  creceber.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 392
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nn_sicred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object cdInsereProd: TClientDataSet
    PersistDataPacket.Data = {
      9E0000009619E0BD0100000018000000050000000000030000009E000A526566
      6572656E63696101004900000001000557494454480200020014000944657363
      726963616F010049000000010005574944544802000200960003436F72010049
      00000001000557494454480200020032000754616D616E686F01004900000001
      000557494454480200020005000A5175616E7469646164650800040000000000
      0000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 672
    object cdInsereProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object cdInsereProdDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
    object cdInsereProdCor: TStringField
      FieldName = 'Cor'
      Size = 50
    end
    object cdInsereProdTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 5
    end
    object cdInsereProdQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object dsInsereProd: TDataSource
    DataSet = cdInsereProd
    Left = 552
    Top = 672
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 1
    Banco.TamanhoMaximoNossoNum = 7
    Banco.TipoCobranca = cobBancoDoBrasilSICOOB
    Banco.NumeroCorrespondente = 756
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.PIX.TipoChavePIX = tchNenhuma
    NumeroArquivo = 0
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 336
    Top = 72
  end
  object qGrupoW: TZQuery
    Connection = ConexWeb
    SQL.Strings = (
      'select *'
      'from GrupoProduto'
      'where idempresa = :emp'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 648
    Top = 665
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qGrupoWId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qGrupoWDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 160
    end
    object qGrupoWex: TIntegerField
      FieldName = 'ex'
    end
    object qGrupoWidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object qGrupoWVisivel: TWideStringField
      FieldName = 'Visivel'
      Size = 2
    end
    object qGrupoWOrdem: TIntegerField
      FieldName = 'Ordem'
    end
  end
  object qGrupo: TZQuery
    Connection = Conex
    SQL.Strings = (
      'select  *'
      'from grupo'
      'where sincronizado = '#39'N'#39' '
      '')
    Params = <>
    Left = 684
    Top = 651
    object qGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGrupoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qGrupoIDWEB: TIntegerField
      FieldName = 'IDWEB'
    end
    object qGrupoSINCRONIZADO: TWideStringField
      FieldName = 'SINCRONIZADO'
      Required = True
      Size = 1
    end
    object qGrupoEX: TIntegerField
      FieldName = 'EX'
      Required = True
    end
  end
  object qEstoqueDisponivel: TZQuery
    Connection = Conex
    SQL.Strings = (
      
        'select sum(qtd) qtdEstoque, sum(qtdvenda) qtdvenda, sum(qtd) - s' +
        'um(qtdvenda) QtdDisponivel from('
      'select sum(estoque.Quantidade) qtd, 0 qtdvenda from estoque'
      'where estoque.idproduto = :prod and idemp = 1'
      'union all'
      'select 0 qtdestoque, sum(venda_i.Qtd) qtdvenda from venda_i '
      'inner join venda on venda.id = venda_i.idvenda'
      
        'where venda_i.idproduto = :prod and venda.status in ('#39'D'#39', '#39'G'#39', '#39 +
        'H'#39')'
      ')as T'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prod'
        ParamType = ptUnknown
      end>
    Left = 696
    Top = 589
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prod'
        ParamType = ptUnknown
      end>
    object qEstoqueDisponivelqtdEstoque: TFloatField
      FieldName = 'qtdEstoque'
      ReadOnly = True
    end
    object qEstoqueDisponivelqtdvenda: TFloatField
      FieldName = 'qtdvenda'
      ReadOnly = True
    end
    object qEstoqueDisponivelQtdDisponivel: TFloatField
      FieldName = 'QtdDisponivel'
      ReadOnly = True
    end
  end
  object qSelectEstoque: TZQuery
    Connection = Conex
    Params = <>
    Left = 64
    Top = 17
  end
  object LogCad: TZQuery
    Connection = Conex
    UpdateObject = uLogCad
    SQL.Strings = (
      'select * from log_cad where id = 0;')
    Params = <>
    Left = 408
    Top = 576
    object LogCadId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object LogCadData: TWideStringField
      FieldName = 'Data'
    end
    object LogCadhora: TWideStringField
      FieldName = 'hora'
      Size = 32
    end
    object LogCadIdusu: TIntegerField
      FieldName = 'Idusu'
    end
    object LogCadIdmov: TIntegerField
      FieldName = 'Idmov'
    end
    object LogCadcadastro: TWideStringField
      FieldName = 'cadastro'
      Size = 100
    end
    object LogCadacao: TWideStringField
      FieldName = 'acao'
      Size = 250
    end
  end
  object uLogCad: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM log_cad'
      'WHERE'
      '  log_cad.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO log_cad'
      '  (Id, Data, hora, Idusu, Idmov, cadastro, acao)'
      'VALUES'
      '  (:Id, :Data, :hora, :Idusu, :Idmov, :cadastro, :acao)')
    ModifySQL.Strings = (
      'UPDATE log_cad SET'
      '  Id = :Id,'
      '  Data = :Data,'
      '  hora = :hora,'
      '  Idusu = :Idusu,'
      '  Idmov = :Idmov,'
      '  cadastro = :cadastro,'
      '  acao = :acao'
      'WHERE'
      '  log_cad.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 440
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Idusu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Idmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'acao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
end
