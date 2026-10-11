/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.security.auth.AuthPlugin
 *  org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages
 *  org.eclipse.equinox.internal.security.storage.Base64
 *  org.eclipse.equinox.security.storage.ISecurePreferences
 *  org.eclipse.equinox.security.storage.StorageException
 *  org.eclipse.equinox.security.storage.provider.IPreferencesContainer
 *  org.eclipse.equinox.security.storage.provider.PasswordProvider
 */
package org.eclipse.equinox.internal.security.win32;

import java.io.IOException;
import java.security.SecureRandom;
import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.Base64;
import org.eclipse.equinox.internal.security.win32.nls.WinCryptoMessages;
import org.eclipse.equinox.security.storage.ISecurePreferences;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;
import org.eclipse.equinox.security.storage.provider.PasswordProvider;

public class WinCrypto
extends PasswordProvider {
    private static final String WIN_PROVIDER_NODE = "/org.eclipse.equinox.secure.storage/windows";
    private static final String PASSWORD_KEY = "encryptedPassword";
    private static final int PASSWORD_LENGTH = 250;

    static {
        System.loadLibrary("jnicrypt");
    }

    public native byte[] windecrypt(byte[] var1);

    public native byte[] winencrypt(byte[] var1);

    public PBEKeySpec getPassword(IPreferencesContainer container, int passwordType) {
        byte[] encryptedPassword = (passwordType & 1) == 0 ? this.getEncryptedPassword(container) : (byte[])null;
        if (encryptedPassword != null) {
            byte[] decryptedPassword = this.windecrypt(encryptedPassword);
            if (decryptedPassword != null) {
                String password = new String(decryptedPassword);
                return new PBEKeySpec(password.toCharArray());
            }
            StorageException e = new StorageException(2, WinCryptoMessages.decryptPasswordFailed);
            AuthPlugin.getDefault().logError(WinCryptoMessages.decryptPasswordFailed, (Throwable)e);
            return null;
        }
        AuthPlugin.getDefault().logMessage(WinCryptoMessages.newPasswordGenerated);
        byte[] rawPassword = new byte[250];
        SecureRandom random = new SecureRandom();
        random.setSeed(System.currentTimeMillis());
        random.nextBytes(rawPassword);
        String password = Base64.encode((byte[])rawPassword);
        if (this.savePassword(password, container)) {
            return new PBEKeySpec(password.toCharArray());
        }
        return null;
    }

    private byte[] getEncryptedPassword(IPreferencesContainer container) {
        String passwordHint;
        ISecurePreferences node = container.getPreferences().node(WIN_PROVIDER_NODE);
        try {
            passwordHint = node.get(PASSWORD_KEY, null);
        }
        catch (StorageException e) {
            AuthPlugin.getDefault().logError(WinCryptoMessages.decryptPasswordFailed, (Throwable)e);
            return null;
        }
        if (passwordHint == null) {
            return null;
        }
        return Base64.decode((String)passwordHint);
    }

    private boolean savePassword(String password, IPreferencesContainer container) {
        byte[] data = this.winencrypt(password.getBytes());
        if (data == null) {
            StorageException e = new StorageException(2, WinCryptoMessages.encryptPasswordFailed);
            AuthPlugin.getDefault().logError(WinCryptoMessages.encryptPasswordFailed, (Throwable)e);
            return false;
        }
        String encodedEncryptyedPassword = Base64.encode((byte[])data);
        ISecurePreferences node = container.getPreferences().node(WIN_PROVIDER_NODE);
        try {
            node.put(PASSWORD_KEY, encodedEncryptyedPassword, false);
        }
        catch (StorageException e) {
            AuthPlugin.getDefault().logError(SecAuthMessages.errorOnSave, (Throwable)e);
            return false;
        }
        try {
            node.flush();
        }
        catch (IOException e) {
            AuthPlugin.getDefault().logError(SecAuthMessages.errorOnSave, (Throwable)e);
            return false;
        }
        return true;
    }

    public boolean retryOnError(Exception e, IPreferencesContainer container) {
        return false;
    }
}

