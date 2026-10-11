/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.CRYPT_OBJID_BLOB;
import org.eclipse.swt.internal.win32.OS;

public class CRYPT_ALGORITHM_IDENTIFIER {
    public int pszObjId;
    public CRYPT_OBJID_BLOB Parameters = new CRYPT_OBJID_BLOB();
    public static final int sizeof = OS.CRYPT_ALGORITHM_IDENTIFIER_sizeof();
}

