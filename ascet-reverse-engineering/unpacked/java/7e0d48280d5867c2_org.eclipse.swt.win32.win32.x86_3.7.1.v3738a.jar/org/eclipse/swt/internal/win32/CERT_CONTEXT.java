/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class CERT_CONTEXT {
    public int dwCertEncodingType;
    public int pbCertEncoded;
    public int cbCertEncoded;
    public int pCertInfo;
    public int hCertStore;
    public static final int sizeof = OS.CERT_CONTEXT_sizeof();
}

