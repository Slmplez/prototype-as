/*
 * Decompiled with CFR 0.152.
 */
package org.jdom;

public class IllegalDataException
extends IllegalArgumentException {
    private static final String CVS_ID = "@(#) $RCSfile: IllegalDataException.java,v $ $Revision: 1.14 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1_1 $";

    IllegalDataException(String data, String construct, String reason) {
        super("The data \"" + data + "\" is not legal for a JDOM " + construct + ": " + reason + ".");
    }

    IllegalDataException(String data, String construct) {
        super("The data \"" + data + "\" is not legal for a JDOM " + construct + ".");
    }

    public IllegalDataException(String reason) {
        super(reason);
    }
}

