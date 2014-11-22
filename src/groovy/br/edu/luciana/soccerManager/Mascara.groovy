package br.edu.luciana.soccerManager

import javax.swing.text.MaskFormatter
import java.text.SimpleDateFormat

/**
 * Created with IntelliJ IDEA.
 * User: Luciana
 * Date: 13/11/14
 * Time: 01:33
 * To change this template use File | Settings | File Templates.
 */
class Mascara {
    MaskFormatter mf

    String cpf(String valor) {
        try {
            if (valor == null) {
                return ''
            } else {

                if (valor.length() == 11) {
                    mf = new MaskFormatter("###.###.###-##")
                } else {
                    mf = new MaskFormatter("##.###.###/####-##")
                }
                mf.setValueContainsLiteralCharacters(false);
                return mf.valueToString(valor)
            }
        } catch ( Exception exception) {

        }

    }

    String telefone(String valor) {
        if (valor == null) {
            return ''
        } else {

            if (valor.length() == 10) {
                mf = new MaskFormatter("(##) ####-####")
            } else {
                mf = new MaskFormatter("(##) #####-####")
            }
            mf.setValueContainsLiteralCharacters(false);
            return mf.valueToString(valor)
        }
    }

    static String data(Date valor) {
        if (valor == null) {
            return ''
        } else {
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")
            return dateFormat.format(valor)
        }
    }

    static String semHora(Date valor) {
        if (valor == null) {
            return ''
        } else {
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy")
            return dateFormat.format(valor)
        }
    }
}
