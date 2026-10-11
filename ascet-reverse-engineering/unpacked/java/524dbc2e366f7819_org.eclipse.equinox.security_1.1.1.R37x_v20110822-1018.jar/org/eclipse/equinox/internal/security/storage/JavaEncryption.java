/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.ConfigurationScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.ConfigurationScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.CallbacksProvider;
import org.eclipse.equinox.internal.security.storage.CryptoData;
import org.eclipse.equinox.internal.security.storage.PasswordExt;
import org.eclipse.equinox.internal.security.storage.StorageUtils;
import org.eclipse.equinox.internal.security.storage.friends.IStorageTask;
import org.eclipse.equinox.internal.security.storage.friends.IUICallbacks;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.osgi.util.NLS;

public class JavaEncryption {
    private static final String SECRET_KEY_FACTORY = "SecretKeyFactory.";
    private static final String CIPHER = "Cipher.";
    private static final String sampleText = "sample text for roundtrip testing";
    private static final PasswordExt samplePassword = new PasswordExt(new PBEKeySpec("password1".toCharArray()), "abc");
    private static ILock lock = Job.getJobManager().newLock();
    private static final int SALT_ITERATIONS = 10;
    private String keyFactoryAlgorithm = null;
    private String cipherAlgorithm = null;
    private boolean initialized = false;
    private HashMap availableCiphers;

    public String getKeyFactoryAlgorithm() {
        return this.keyFactoryAlgorithm;
    }

    public String getCipherAlgorithm() {
        return this.cipherAlgorithm;
    }

    public void setAlgorithms(String cipherAlgorithm, String keyFactoryAlgorithm) {
        try {
            lock.acquire();
            this.cipherAlgorithm = cipherAlgorithm;
            this.keyFactoryAlgorithm = keyFactoryAlgorithm;
        }
        finally {
            lock.release();
        }
    }

    private void init() throws StorageException {
        if (this.initialized) {
            return;
        }
        this.initialized = true;
        try {
            lock.acquire();
            IUICallbacks callback = CallbacksProvider.getDefault().getCallback();
            if (callback == null) {
                this.internalInitialize();
            } else {
                callback.execute(new IStorageTask(){

                    public void execute() throws StorageException {
                        JavaEncryption.this.internalInitialize();
                    }
                });
            }
        }
        finally {
            lock.release();
        }
    }

    protected void internalInitialize() throws StorageException {
        if (this.cipherAlgorithm != null && this.keyFactoryAlgorithm != null) {
            if (this.roundtrip(this.cipherAlgorithm, this.keyFactoryAlgorithm)) {
                return;
            }
            String msg = NLS.bind((String)SecAuthMessages.noAlgorithm, (Object)this.cipherAlgorithm);
            StorageException e = new StorageException(0, msg);
            AuthPlugin.getDefault().logError(msg, e);
            throw e;
        }
        if (this.cipherAlgorithm == null || this.keyFactoryAlgorithm == null) {
            IEclipsePreferences eclipseNode = new ConfigurationScope().getNode("org.eclipse.equinox.security");
            this.cipherAlgorithm = eclipseNode.get("org.eclipse.equinox.security.preferences.cipher", "PBEWithMD5AndDES");
            this.keyFactoryAlgorithm = eclipseNode.get("org.eclipse.equinox.security.preferences.keyFactory", "PBEWithMD5AndDES");
        }
        if (this.roundtrip(this.cipherAlgorithm, this.keyFactoryAlgorithm)) {
            return;
        }
        String unavailableCipher = this.cipherAlgorithm;
        this.detect();
        if (this.availableCiphers.size() == 0) {
            throw new StorageException(0, SecAuthMessages.noAlgorithms);
        }
        this.cipherAlgorithm = (String)this.availableCiphers.keySet().iterator().next();
        this.keyFactoryAlgorithm = (String)this.availableCiphers.get(this.cipherAlgorithm);
        String msg = NLS.bind((String)SecAuthMessages.usingAlgorithm, (Object)unavailableCipher, (Object)this.cipherAlgorithm);
        AuthPlugin.getDefault().logMessage(msg);
    }

    public CryptoData encrypt(PasswordExt passwordExt, byte[] clearText) throws StorageException {
        this.init();
        return this.internalEncrypt(passwordExt, clearText);
    }

    private CryptoData internalEncrypt(PasswordExt passwordExt, byte[] clearText) throws StorageException {
        try {
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(this.keyFactoryAlgorithm);
            SecretKey key = keyFactory.generateSecret(passwordExt.getPassword());
            byte[] salt = new byte[8];
            SecureRandom random = new SecureRandom();
            random.nextBytes(salt);
            PBEParameterSpec entropy = new PBEParameterSpec(salt, 10);
            Cipher c = Cipher.getInstance(this.cipherAlgorithm);
            c.init(1, (Key)key, entropy);
            byte[] result = c.doFinal(clearText);
            return new CryptoData(passwordExt.getModuleID(), salt, result);
        }
        catch (InvalidKeyException e) {
            this.handle(e, 2);
            return null;
        }
        catch (InvalidAlgorithmParameterException e) {
            this.handle(e, 2);
            return null;
        }
        catch (IllegalBlockSizeException e) {
            this.handle(e, 2);
            return null;
        }
        catch (BadPaddingException e) {
            this.handle(e, 2);
            return null;
        }
        catch (InvalidKeySpecException e) {
            this.handle(e, 0);
            return null;
        }
        catch (NoSuchPaddingException e) {
            this.handle(e, 0);
            return null;
        }
        catch (NoSuchAlgorithmException e) {
            this.handle(e, 0);
            return null;
        }
    }

    public byte[] decrypt(PasswordExt passwordExt, CryptoData encryptedData) throws StorageException, IllegalStateException, IllegalBlockSizeException, BadPaddingException {
        this.init();
        return this.internalDecrypt(passwordExt, encryptedData);
    }

    private byte[] internalDecrypt(PasswordExt passwordExt, CryptoData encryptedData) throws StorageException, IllegalStateException, IllegalBlockSizeException, BadPaddingException {
        try {
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(this.keyFactoryAlgorithm);
            SecretKey key = keyFactory.generateSecret(passwordExt.getPassword());
            PBEParameterSpec entropy = new PBEParameterSpec(encryptedData.getSalt(), 10);
            Cipher c = Cipher.getInstance(this.cipherAlgorithm);
            c.init(2, (Key)key, entropy);
            byte[] result = c.doFinal(encryptedData.getData());
            return result;
        }
        catch (InvalidAlgorithmParameterException e) {
            this.handle(e, 0);
            return null;
        }
        catch (InvalidKeyException e) {
            this.handle(e, 0);
            return null;
        }
        catch (InvalidKeySpecException e) {
            this.handle(e, 0);
            return null;
        }
        catch (NoSuchPaddingException e) {
            this.handle(e, 0);
            return null;
        }
        catch (NoSuchAlgorithmException e) {
            this.handle(e, 0);
            return null;
        }
    }

    private void handle(Exception e, int internalCode) throws StorageException {
        if (AuthPlugin.DEBUG_LOGIN_FRAMEWORK) {
            e.printStackTrace();
        }
        StorageException exception = new StorageException(internalCode, (Throwable)e);
        throw exception;
    }

    public HashMap detect() {
        IUICallbacks callback = CallbacksProvider.getDefault().getCallback();
        if (callback == null) {
            return this.internalDetect();
        }
        IStorageTask task = new IStorageTask(){

            public void execute() {
                JavaEncryption.this.internalDetect();
            }
        };
        try {
            callback.execute(task);
        }
        catch (StorageException e) {
            AuthPlugin.getDefault().logError(e.getMessage(), e);
        }
        return this.availableCiphers;
    }

    public HashMap internalDetect() {
        Set ciphers = this.findProviders(CIPHER);
        Set keyFactories = this.findProviders(SECRET_KEY_FACTORY);
        this.availableCiphers = new HashMap(ciphers.size());
        Iterator i = ciphers.iterator();
        while (i.hasNext()) {
            String cipher = (String)i.next();
            if (keyFactories.contains(cipher) && this.roundtrip(cipher, cipher)) {
                this.availableCiphers.put(cipher, cipher);
                continue;
            }
            Iterator j = keyFactories.iterator();
            while (j.hasNext()) {
                String keyFactory = (String)j.next();
                if (!this.roundtrip(cipher, keyFactory)) continue;
                this.availableCiphers.put(cipher, keyFactory);
            }
        }
        return this.availableCiphers;
    }

    private Set findProviders(String prefix) {
        Provider[] providers = Security.getProviders();
        HashSet<String> algorithms = new HashSet<String>();
        int prefixLength = prefix.length();
        int i = 0;
        while (i < providers.length) {
            Iterator<Map.Entry<Object, Object>> j = providers[i].entrySet().iterator();
            while (j.hasNext()) {
                String value;
                Map.Entry<Object, Object> entry = j.next();
                Object key = entry.getKey();
                if (key == null || !(key instanceof String) || (value = (String)key).indexOf(32) != -1 || !value.startsWith(prefix)) continue;
                String keyFactory = value.substring(prefixLength);
                algorithms.add(keyFactory);
            }
            ++i;
        }
        return algorithms;
    }

    private boolean roundtrip(String testCipher, String testKeyFactory) {
        boolean storeInitState = this.initialized;
        String storedCipherAlgorithm = this.cipherAlgorithm;
        String storedKeyAlgorithm = this.keyFactoryAlgorithm;
        this.initialized = true;
        try {
            this.cipherAlgorithm = testCipher;
            this.keyFactoryAlgorithm = testKeyFactory;
            CryptoData encrypted = this.internalEncrypt(samplePassword, StorageUtils.getBytes(sampleText));
            byte[] roundtripBytes = this.internalDecrypt(samplePassword, encrypted);
            String result = StorageUtils.getString(roundtripBytes);
            boolean bl = sampleText.equals(result);
            return bl;
        }
        catch (Exception exception) {
            return false;
        }
        finally {
            this.cipherAlgorithm = storedCipherAlgorithm;
            this.keyFactoryAlgorithm = storedKeyAlgorithm;
            this.initialized = storeInitState;
        }
    }
}

