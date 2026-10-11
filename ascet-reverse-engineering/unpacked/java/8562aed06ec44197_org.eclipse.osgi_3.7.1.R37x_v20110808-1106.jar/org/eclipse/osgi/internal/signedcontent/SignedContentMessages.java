/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import org.eclipse.osgi.util.NLS;

public class SignedContentMessages
extends NLS {
    public static String file_is_removed_from_jar;
    public static String File_In_Jar_Is_Tampered;
    public static String Security_File_Is_Tampered;
    public static String Signature_Not_Verify;
    public static String SF_File_Parsing_Error;
    public static String PKCS7_SignerInfo_Version_Not_Supported;
    public static String PKCS7_Invalid_File;
    public static String PKCS7_Parse_Signing_Time;
    public static String Algorithm_Not_Supported;
    public static String Factory_SignedContent_Error;
    public static String Default_Trust_Keystore_Load_Failed;
    public static String Default_Trust_Read_Only;
    public static String Default_Trust_Cert_Not_Found;
    public static String Default_Trust_Existing_Cert;
    public static String Default_Trust_Existing_Alias;
    private static final String BUNDLE_PACKAGE = "org.eclipse.osgi.internal.signedcontent.";
    private static final String BUNDLE_FILENAME = "SignedContentMessages";
    private static final String BUNDLE_NAME = "org.eclipse.osgi.internal.signedcontent.SignedContentMessages";
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages(BUNDLE_NAME, clazz);
    }
}

