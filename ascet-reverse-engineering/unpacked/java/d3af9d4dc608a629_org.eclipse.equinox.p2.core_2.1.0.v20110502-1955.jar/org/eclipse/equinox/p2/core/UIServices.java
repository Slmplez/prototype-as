/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core;

import java.security.cert.Certificate;

public abstract class UIServices {
    public static final String SERVICE_NAME;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.UIServices");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SERVICE_NAME = clazz.getName();
    }

    public abstract AuthenticationInfo getUsernamePassword(String var1);

    public abstract AuthenticationInfo getUsernamePassword(String var1, AuthenticationInfo var2);

    public abstract TrustInfo getTrustInfo(Certificate[][] var1, String[] var2);

    public static class AuthenticationInfo {
        private final boolean save;
        private final String userName;
        private final String password;

        public AuthenticationInfo(String userName, String password, boolean saveResult) {
            this.userName = userName;
            this.password = password;
            this.save = saveResult;
        }

        public boolean saveResult() {
            return this.save;
        }

        public String getUserName() {
            return this.userName;
        }

        public String getPassword() {
            return this.password;
        }
    }

    public static class TrustInfo {
        private final Certificate[] trustedCertificates;
        private final boolean saveTrustedCertificates;
        private final boolean trustUnsigned;

        public TrustInfo(Certificate[] trusted, boolean save, boolean trustUnsigned) {
            this.trustedCertificates = trusted;
            this.saveTrustedCertificates = save;
            this.trustUnsigned = trustUnsigned;
        }

        public Certificate[] getTrustedCertificates() {
            return this.trustedCertificates;
        }

        public boolean persistTrust() {
            return this.saveTrustedCertificates;
        }

        public boolean trustUnsignedContent() {
            return this.trustUnsigned;
        }
    }
}

