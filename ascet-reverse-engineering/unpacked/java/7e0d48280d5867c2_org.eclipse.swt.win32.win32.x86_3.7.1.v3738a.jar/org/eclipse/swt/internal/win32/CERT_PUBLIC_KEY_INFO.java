/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.CRYPT_ALGORITHM_IDENTIFIER;
import org.eclipse.swt.internal.win32.CRYPT_BIT_BLOB;
import org.eclipse.swt.internal.win32.OS;

public class CERT_PUBLIC_KEY_INFO {
    public CRYPT_ALGORITHM_IDENTIFIER Algorithm = new CRYPT_ALGORITHM_IDENTIFIER();
    public CRYPT_BIT_BLOB PublicKey = new CRYPT_BIT_BLOB();
    public static final int sizeof = OS.CERT_PUBLIC_KEY_INFO_sizeof();
}

