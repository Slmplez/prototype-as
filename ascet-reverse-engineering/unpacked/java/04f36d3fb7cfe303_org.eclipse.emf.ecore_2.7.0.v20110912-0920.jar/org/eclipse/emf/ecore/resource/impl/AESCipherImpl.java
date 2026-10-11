/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.eclipse.emf.ecore.resource.URIConverter;

public class AESCipherImpl
implements URIConverter.Cipher {
    private static final String ENCRYPTION_ALGORITHM = "AES/CFB8/PKCS5Padding";
    private static final int ENCRYPTION_IV_LENGTH = 16;
    private static final String ENCRYPTION_KEY_ALGORITHM = "AES";
    private static final String PBE_ALGORITHM = "PBEWithMD5AndDES";
    private static final int PBE_IV_LENGTH = 8;
    private static final int PBE_ITERATIONS = 1000;
    private static KeyGenerator keygen;
    private static SecureRandom random;
    private String password;
    private Key key;
    private int keysize = 128;
    private byte[] encryptedKeyBytes;
    private byte[] pbeIV;
    private byte[] encryptionIV;

    private static Key generateKey(int keysize) {
        if (keygen == null) {
            try {
                keygen = KeyGenerator.getInstance(ENCRYPTION_KEY_ALGORITHM);
                keygen.init(keysize);
            }
            catch (Exception ex) {
                throw new RuntimeException(ex);
            }
        }
        return keygen.generateKey();
    }

    private static byte[] randomBytes(int length) {
        if (random == null) {
            random = new SecureRandom();
        }
        byte[] bytes = new byte[length];
        random.nextBytes(bytes);
        return bytes;
    }

    private static byte[] readBytes(int length, InputStream in) throws Exception {
        byte[] bytes = new byte[length];
        int read = in.read(bytes);
        if (read != length) {
            throw new Exception("expected length != actual length");
        }
        return bytes;
    }

    private static byte[] transformWithPassword(byte[] bytes, byte[] iv, String password, int mode) throws Exception {
        PBEKeySpec pbeKeySpec = new PBEKeySpec(password.toCharArray());
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(PBE_ALGORITHM);
        SecretKey pbeKey = keyFactory.generateSecret(pbeKeySpec);
        PBEParameterSpec pbeParamSpec = new PBEParameterSpec(iv, 1000);
        Cipher keyCipher = Cipher.getInstance(PBE_ALGORITHM);
        keyCipher.init(mode, (Key)pbeKey, pbeParamSpec);
        return keyCipher.doFinal(bytes);
    }

    public AESCipherImpl(String password) throws Exception {
        this.password = password;
    }

    public void setKeysize(int keysize) {
        if (this.key == null) {
            this.keysize = keysize;
        }
    }

    public int getKeysize() {
        return this.keysize;
    }

    public OutputStream encrypt(OutputStream outputStream) throws Exception {
        if (this.key == null) {
            this.key = AESCipherImpl.generateKey(this.getKeysize());
            this.pbeIV = AESCipherImpl.randomBytes(8);
            this.encryptionIV = AESCipherImpl.randomBytes(16);
            this.encryptedKeyBytes = AESCipherImpl.transformWithPassword(this.key.getEncoded(), this.pbeIV, this.password, 1);
        }
        outputStream.write(this.pbeIV);
        outputStream.write(this.encryptionIV);
        outputStream.write(this.encryptedKeyBytes.length);
        outputStream.write(this.encryptedKeyBytes);
        Cipher cipher = Cipher.getInstance(ENCRYPTION_ALGORITHM);
        cipher.init(1, this.key, new IvParameterSpec(this.encryptionIV));
        outputStream = new FilterOutputStream(outputStream){

            public void close() throws IOException {
            }
        };
        return new CipherOutputStream(outputStream, cipher);
    }

    public void finish(OutputStream out) throws Exception {
        out.close();
    }

    public InputStream decrypt(InputStream in) throws Exception {
        byte[] pbeIV = AESCipherImpl.readBytes(8, in);
        byte[] encryptionIV = AESCipherImpl.readBytes(16, in);
        int keyLength = in.read();
        byte[] encryptedKeyBytes = AESCipherImpl.readBytes(keyLength, in);
        byte[] decryptedKeyBytes = AESCipherImpl.transformWithPassword(encryptedKeyBytes, pbeIV, this.password, 2);
        SecretKeySpec key = new SecretKeySpec(decryptedKeyBytes, ENCRYPTION_KEY_ALGORITHM);
        if (this.key == null) {
            this.pbeIV = pbeIV;
            this.encryptionIV = encryptionIV;
            this.encryptedKeyBytes = encryptedKeyBytes;
            this.key = key;
        }
        Cipher cipher = Cipher.getInstance(ENCRYPTION_ALGORITHM);
        cipher.init(2, (Key)key, new IvParameterSpec(encryptionIV));
        return new CipherInputStream(in, cipher);
    }

    public void finish(InputStream in) throws Exception {
    }
}

