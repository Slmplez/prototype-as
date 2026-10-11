/*
 * Decompiled with CFR 0.152.
 */
package org.jdom;

import org.jdom.IllegalDataException;
import org.jdom.Text;
import org.jdom.Verifier;

public class CDATA
extends Text {
    private static final String CVS_ID = "@(#) $RCSfile: CDATA.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1_1 $";

    protected CDATA() {
    }

    public CDATA(String string) {
        this.setText(string);
    }

    public Text setText(String str) {
        if (str == null || "".equals(str)) {
            this.value = "";
            return this;
        }
        String reason = Verifier.checkCDATASection(str);
        if (reason != null) {
            throw new IllegalDataException(str, "CDATA section", reason);
        }
        this.value = str;
        return this;
    }

    public void append(String str) {
        if (str == null || "".equals(str)) {
            return;
        }
        String tmpValue = this.value == "" ? str : this.value + str;
        String reason = Verifier.checkCDATASection(tmpValue);
        if (reason != null) {
            throw new IllegalDataException(str, "CDATA section", reason);
        }
        this.value = tmpValue;
    }

    public void append(Text text) {
        if (text == null) {
            return;
        }
        this.append(text.getText());
    }

    public String toString() {
        return new StringBuffer(64).append("[CDATA: ").append(this.getText()).append("]").toString();
    }
}

