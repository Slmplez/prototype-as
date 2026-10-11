/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.service.security;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import org.eclipse.osgi.internal.signedcontent.SignedBundleHook;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.service.security.TrustEngine;
import org.eclipse.osgi.util.NLS;

public class KeyStoreTrustEngine
extends TrustEngine {
    private KeyStore keyStore;
    private final String type;
    private final String path;
    private final char[] password;
    private final String name;

    public KeyStoreTrustEngine(String path, String type, char[] password, String name) {
        this.path = path;
        this.type = type;
        this.password = password;
        this.name = name;
    }

    private String getType() {
        return this.type;
    }

    private String getPath() {
        return this.path;
    }

    private char[] getPassword() {
        return this.password;
    }

    private synchronized KeyStore getKeyStore() throws IOException, GeneralSecurityException {
        if (this.keyStore == null) {
            this.keyStore = KeyStore.getInstance(this.getType());
            InputStream in = this.getInputStream();
            try {
                this.loadStore(this.keyStore, in);
            }
            catch (Throwable throwable) {
                try {
                    in.close();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                in.close();
            }
            catch (IOException iOException) {}
        }
        if (this.keyStore == null) {
            throw new KeyStoreException(NLS.bind(SignedContentMessages.Default_Trust_Keystore_Load_Failed, this.getPath()));
        }
        return this.keyStore;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Certificate findTrustAnchor(Certificate[] certChain) throws IOException {
        if (certChain == null || certChain.length == 0) {
            throw new IllegalArgumentException("Certificate chain is required");
        }
        try {
            X509Certificate rootCert = null;
            KeyStore store = this.getKeyStore();
            int i = 0;
            while (i < certChain.length) {
                if (certChain[i] instanceof X509Certificate) {
                    if (i == certChain.length - 1) {
                        X509Certificate cert = (X509Certificate)certChain[i];
                        if (!cert.getSubjectDN().equals(cert.getIssuerDN())) return this.findAlternativeRoot(cert, store);
                        cert.verify(cert.getPublicKey());
                        rootCert = cert;
                    } else {
                        X509Certificate nextX509Cert = (X509Certificate)certChain[i + 1];
                        certChain[i].verify(nextX509Cert.getPublicKey());
                    }
                }
                KeyStore keyStore = store;
                synchronized (keyStore) {
                    String alias;
                    String string = alias = rootCert == null ? null : store.getCertificateAlias(rootCert);
                    if (alias != null) {
                        return store.getCertificate(alias);
                    }
                    if (rootCert != certChain[i] && (alias = store.getCertificateAlias(certChain[i])) != null) {
                        return store.getCertificate(alias);
                    }
                    if (certChain.length > 1 && i == certChain.length - 1 && certChain[i - 1] instanceof X509Certificate) {
                        return this.findAlternativeRoot((X509Certificate)certChain[i - 1], store);
                    }
                }
                ++i;
            }
            return null;
        }
        catch (KeyStoreException e) {
            throw (IOException)new IOException(e.getMessage()).initCause(e);
        }
        catch (GeneralSecurityException e) {
            SignedBundleHook.log(e.getMessage(), 2, e);
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Certificate findAlternativeRoot(X509Certificate cert, KeyStore store) throws InvalidKeyException, KeyStoreException, NoSuchAlgorithmException, NoSuchProviderException, SignatureException, CertificateException {
        KeyStore keyStore = store;
        synchronized (keyStore) {
            Enumeration<String> e = store.aliases();
            while (e.hasMoreElements()) {
                Certificate nextCert = store.getCertificate(e.nextElement());
                if (!(nextCert instanceof X509Certificate) || !((X509Certificate)nextCert).getSubjectDN().equals(cert.getIssuerDN())) continue;
                cert.verify(nextCert.getPublicKey());
                return nextCert;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected String doAddTrustAnchor(Certificate cert, String alias) throws IOException, GeneralSecurityException {
        if (this.isReadOnly()) {
            throw new IOException(SignedContentMessages.Default_Trust_Read_Only);
        }
        if (cert == null) {
            throw new IllegalArgumentException("Certificate must be specified");
        }
        try {
            KeyStore store;
            KeyStore keyStore = store = this.getKeyStore();
            synchronized (keyStore) {
                String oldAlias = store.getCertificateAlias(cert);
                if (oldAlias != null) {
                    throw new CertificateException(SignedContentMessages.Default_Trust_Existing_Cert);
                }
                Certificate oldCert = store.getCertificate(alias);
                if (oldCert != null) {
                    throw new CertificateException(SignedContentMessages.Default_Trust_Existing_Alias);
                }
                store.setCertificateEntry(alias, cert);
                OutputStream out = this.getOutputStream();
                try {
                    this.saveStore(store, out);
                }
                finally {
                    this.safeClose(out);
                }
            }
        }
        catch (KeyStoreException ke) {
            throw (CertificateException)new CertificateException(ke.getMessage()).initCause(ke);
        }
        return alias;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void doRemoveTrustAnchor(Certificate cert) throws IOException, GeneralSecurityException {
        if (this.isReadOnly()) {
            throw new IOException(SignedContentMessages.Default_Trust_Read_Only);
        }
        if (cert == null) {
            throw new IllegalArgumentException("Certificate must be specified");
        }
        try {
            KeyStore store;
            KeyStore keyStore = store = this.getKeyStore();
            synchronized (keyStore) {
                String alias = store.getCertificateAlias(cert);
                if (alias == null) {
                    throw new CertificateException(SignedContentMessages.Default_Trust_Cert_Not_Found);
                }
                this.removeTrustAnchor(alias);
            }
        }
        catch (KeyStoreException ke) {
            throw (CertificateException)new CertificateException(ke.getMessage()).initCause(ke);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void doRemoveTrustAnchor(String alias) throws IOException, GeneralSecurityException {
        if (alias == null) {
            throw new IllegalArgumentException("Alias must be specified");
        }
        try {
            KeyStore store;
            KeyStore keyStore = store = this.getKeyStore();
            synchronized (keyStore) {
                Certificate oldCert = store.getCertificate(alias);
                if (oldCert == null) {
                    throw new CertificateException(SignedContentMessages.Default_Trust_Cert_Not_Found);
                }
                store.deleteEntry(alias);
                OutputStream out = this.getOutputStream();
                try {
                    this.saveStore(store, out);
                }
                finally {
                    this.safeClose(out);
                }
            }
        }
        catch (KeyStoreException ke) {
            throw (CertificateException)new CertificateException(ke.getMessage()).initCause(ke);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Certificate getTrustAnchor(String alias) throws IOException, GeneralSecurityException {
        if (alias == null) {
            throw new IllegalArgumentException("Alias must be specified");
        }
        try {
            KeyStore store;
            KeyStore keyStore = store = this.getKeyStore();
            synchronized (keyStore) {
                return store.getCertificate(alias);
            }
        }
        catch (KeyStoreException ke) {
            throw (CertificateException)new CertificateException(ke.getMessage()).initCause(ke);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String[] getAliases() throws IOException, GeneralSecurityException {
        ArrayList<String> returnList = new ArrayList<String>();
        try {
            KeyStore store;
            KeyStore keyStore = store = this.getKeyStore();
            synchronized (keyStore) {
                Enumeration<String> aliases = store.aliases();
                while (aliases.hasMoreElements()) {
                    String currentAlias = aliases.nextElement();
                    if (!store.isCertificateEntry(currentAlias)) continue;
                    returnList.add(currentAlias);
                }
            }
        }
        catch (KeyStoreException ke) {
            throw (CertificateException)new CertificateException(ke.getMessage()).initCause(ke);
        }
        return returnList.toArray(new String[0]);
    }

    private void loadStore(KeyStore store, InputStream is) throws IOException, GeneralSecurityException {
        store.load(is, this.getPassword());
    }

    private void saveStore(KeyStore store, OutputStream os) throws IOException, GeneralSecurityException {
        store.store(os, this.getPassword());
    }

    private void safeClose(OutputStream out) {
        try {
            if (out != null) {
                out.close();
            }
        }
        catch (IOException iOException) {}
    }

    private InputStream getInputStream() throws IOException {
        return new FileInputStream(new File(this.getPath()));
    }

    private OutputStream getOutputStream() throws IOException {
        File file = new File(this.getPath());
        if (!file.exists()) {
            file.createNewFile();
        }
        return new FileOutputStream(file);
    }

    public boolean isReadOnly() {
        return this.getPassword() == null || !new File(this.path).canWrite();
    }

    public String getName() {
        return this.name;
    }
}

