/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import org.eclipse.emf.ecore.resource.URIConverter;

public class DESCipherImpl
implements URIConverter.Cipher {
    protected static final String ENCRYPTION_SCHEME = "DES";
    protected static final String UNICODE_FORMAT = "UTF-8";
    protected String stringKey;
    protected SecretKey key;

    public DESCipherImpl() {
        this(null);
    }

    public DESCipherImpl(String key) {
        this.stringKey = key;
    }

    public OutputStream encrypt(OutputStream outputStream) throws Exception {
        Cipher cipher = Cipher.getInstance(ENCRYPTION_SCHEME);
        cipher.init(1, this.getKey());
        outputStream = new FilterOutputStream(outputStream){

            public void close() throws IOException {
            }
        };
        return new CipherOutputStream(outputStream, cipher);
    }

    public void finish(OutputStream outputStream) throws Exception {
        outputStream.close();
    }

    public InputStream decrypt(InputStream inputStream) throws Exception {
        Cipher cipher = Cipher.getInstance(ENCRYPTION_SCHEME);
        cipher.init(2, this.getKey());
        return new CipherInputStream(inputStream, cipher);
    }

    public void finish(InputStream inputStream) throws Exception {
    }

    protected SecretKey getKey() throws Exception {
        if (this.key == null) {
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(ENCRYPTION_SCHEME);
            DESKeySpec keySpec = new DESKeySpec(this.stringKey.getBytes(UNICODE_FORMAT));
            this.key = keyFactory.generateSecret(keySpec);
        }
        return this.key;
    }
}

