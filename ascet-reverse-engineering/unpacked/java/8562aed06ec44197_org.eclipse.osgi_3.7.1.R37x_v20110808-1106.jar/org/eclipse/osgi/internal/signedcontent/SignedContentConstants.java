/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

public interface SignedContentConstants {
    public static final String SHA1_STR = "SHA1";
    public static final String MD5_STR = "MD5";
    public static final String MD2_STR = "MD2";
    public static final String DOT_DSA = ".DSA";
    public static final String DOT_RSA = ".RSA";
    public static final String DOT_SF = ".SF";
    public static final String SIG_DASH = "SIG-";
    public static final String META_INF = "META-INF/";
    public static final String META_INF_MANIFEST_MF = "META-INF/MANIFEST.MF";
    public static final String[] EMPTY_STRING = new String[0];
    public static final String MF_ENTRY_NEWLN_NAME = "\nName: ";
    public static final String MF_ENTRY_NAME = "Name: ";
    public static final String MF_DIGEST_PART = "-Digest: ";
    public static final String digestManifestSearch = "-Digest-Manifest: ";
    public static final int digestManifestSearchLen = "-Digest-Manifest: ".length();
    public static final int[] SIGNEDDATA_OID = new int[]{1, 2, 840, 113549, 1, 7, 2};
    public static final int[] MD5_OID = new int[]{1, 2, 840, 113549, 2, 5};
    public static final int[] MD2_OID = new int[]{1, 2, 840, 113549, 2, 2};
    public static final int[] SHA1_OID = new int[]{1, 3, 14, 3, 2, 26};
    public static final int[] DSA_OID = new int[]{1, 2, 840, 10040, 4, 1};
    public static final int[] RSA_OID = new int[]{1, 2, 840, 113549, 1, 1, 1};
    public static final String TRUST_ENGINE = "osgi.signedcontent.trust.engine";
    public static final Object DEFAULT_TRUST_ENGINE = "org.eclipse.osgi";
    public static final String AUTHORIZATION_ENGINE = "osgi.signedcontent.authorization.engine";
    public static final Object DEFAULT_AUTHORIZATION_ENGINE = "org.eclipse.osgi";
    public static final int[] TIMESTAMP_OID = new int[]{1, 2, 840, 113549, 1, 9, 16, 2, 14};
    public static final int[] TIMESTAMP_TST_OID = new int[]{1, 2, 840, 113549, 1, 9, 16, 1, 4};
    public static final int[] SIGNING_TIME = new int[]{1, 2, 840, 113549, 1, 9, 5};
}

