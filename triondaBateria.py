bateria_atual = 14
bola_em_jogo = False

if bateria_atual < 15 and bola_em_jogo:
    print(
        "ALERTA MÁXIMO: Bateria baixa! Substitua a bola na próxima paralisação."
    )
elif bateria_atual < 15 and not bola_em_jogo:
    print("Aviso: Bateria baixa. Aproveite a bola parada para trocá-la.")
else:
    print("Sistema Trionda operando normalmente. Bateria ok.")
