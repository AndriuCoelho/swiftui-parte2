//
//  DetalhesViagemView.swift
//  alura-viagens
//
//  Created by Ândriu Felipe Coelho on 02/08/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct DetalhesViagemView: View {

    // MARK: Atributos

    var pacoteDeViagem: PacoteDeViagem
    var corDaFonte = Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0)

    var body: some View {
        GeometryReader { view in
            VStack {
                Image(self.pacoteDeViagem.imagens[0])
                    .resizable()
                    .frame(height: 200)

                Text(self.pacoteDeViagem.titulo.uppercased())
                    .font(.custom("Avenir Black", size: 26))
                    .foregroundColor(self.corDaFonte)
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)

                Text(self.pacoteDeViagem.descricao)
                    .font(.custom("Avenir", size: 16))
                    .foregroundColor(self.corDaFonte)
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)

                Text(self.pacoteDeViagem.detalhes)
                    .font(.custom("Avenir Black", size: 16))
                    .foregroundColor(self.corDaFonte)
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)

                HStack {
                    VStack {
                        Text("Válido para o periodo de:")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(self.corDaFonte)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        Text(self.pacoteDeViagem.dataValidade)
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(self.corDaFonte)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    }

                    VStack {
                        Text("R$ \(self.pacoteDeViagem.valor)")
                            .font(.custom("Avenir Black", size: 25))
                            .foregroundColor(.orange)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        Text("sem taxas em até 12x")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(self.corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    }
                }

                VStack {
                    Text("O que está incluso")
                        .font(.custom("Avenir", size: 20))
                        .foregroundColor(self.corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)

                }

                HStack {
                    VStack {
                        Image("icone-apartamento")
                        Text("Apartamento")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(self.corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .center)
                    }

                    Spacer()

                    VStack {
                        Image("icone-aviao")
                        Text("Passagem Aérea")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(self.corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .center)
                    }
                }
                .padding(.leading, 40)
                .padding(.trailing, 40)



            }
        }
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacoteDeViagem: pacotesDeViagens[0])
    }
}