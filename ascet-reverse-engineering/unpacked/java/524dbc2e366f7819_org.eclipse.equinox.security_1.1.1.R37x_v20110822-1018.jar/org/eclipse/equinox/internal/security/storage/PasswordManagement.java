/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.CryptoData;
import org.eclipse.equinox.internal.security.storage.PasswordExt;
import org.eclipse.equinox.internal.security.storage.SecurePreferences;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesContainer;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesRoot;
import org.eclipse.equinox.internal.security.storage.StorageUtils;
import org.eclipse.equinox.security.storage.EncodingUtils;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;
import org.eclipse.osgi.util.NLS;

public class PasswordManagement {
    private static final String DIGEST_ALGORITHM = "MD5";
    private static final String PASSWORD_RECOVERY_NODE = "/org.eclipse.equinox.secure.storage/recovery";
    protected static final String RECOVERY_PSEUDO_ID = "org.eclipse.equinox.security.recoveryModule";
    private static final String PASSWORD_RECOVERY_KEY = "org.eclipse.equinox.security.internal.recovery.password";
    private static final String PASSWORD_RECOVERY_QUESTION = "org.eclipse.equinox.security.internal.recovery.question";

    public static void setupRecovery(String[][] challengeResponse, String moduleID, IPreferencesContainer container) {
        PasswordExt password;
        SecurePreferencesRoot root = ((SecurePreferencesContainer)container).getRootData();
        SecurePreferences node = PasswordManagement.recoveryNode(root, moduleID);
        if (challengeResponse == null) {
            node.remove(PASSWORD_RECOVERY_KEY);
            int i = 0;
            while (i < 2) {
                String key = PASSWORD_RECOVERY_QUESTION + Integer.toString(i + 1);
                node.remove(key);
                ++i;
            }
            root.markModified();
            return;
        }
        String internalPassword = PasswordManagement.mashPassword(challengeResponse[1]);
        PasswordExt internalPasswordExt = new PasswordExt(new PBEKeySpec(internalPassword.toCharArray()), RECOVERY_PSEUDO_ID);
        try {
            password = root.getPassword(moduleID, container, false);
        }
        catch (StorageException e) {
            AuthPlugin.getDefault().logError(SecAuthMessages.failedCreateRecovery, e);
            return;
        }
        try {
            byte[] data = StorageUtils.getBytes(new String(password.getPassword().getPassword()));
            CryptoData encryptedValue = root.getCipher().encrypt(internalPasswordExt, data);
            node.internalPut(PASSWORD_RECOVERY_KEY, encryptedValue.toString());
            root.markModified();
        }
        catch (StorageException e) {
            AuthPlugin.getDefault().logError(SecAuthMessages.failedCreateRecovery, e);
            return;
        }
        int i = 0;
        while (i < challengeResponse[0].length) {
            String key = PASSWORD_RECOVERY_QUESTION + Integer.toString(i + 1);
            try {
                node.put(key, challengeResponse[0][i], false, (SecurePreferencesContainer)container);
            }
            catch (StorageException storageException) {}
            ++i;
        }
    }

    public static String[] getPasswordRecoveryQuestions(SecurePreferencesRoot root, String moduleID) {
        String key;
        ArrayList<String> questions = new ArrayList<String>();
        SecurePreferences node = PasswordManagement.recoveryNode(root, moduleID);
        int i = 0;
        while (node.hasKey(key = PASSWORD_RECOVERY_QUESTION + Integer.toString(i + 1))) {
            try {
                String question = node.get(key, null, null);
                if (question == null) break;
                questions.add(question);
            }
            catch (StorageException storageException) {}
            ++i;
        }
        String[] result = new String[questions.size()];
        return questions.toArray(result);
    }

    public static String recoverPassword(String[] answers, SecurePreferencesRoot root, String moduleID) {
        String internalPassword = PasswordManagement.mashPassword(answers);
        SecurePreferences node = PasswordManagement.recoveryNode(root, moduleID);
        PasswordExt internalPasswordExt = new PasswordExt(new PBEKeySpec(internalPassword.toCharArray()), RECOVERY_PSEUDO_ID);
        try {
            CryptoData encryptedData = new CryptoData(node.internalGet(PASSWORD_RECOVERY_KEY));
            byte[] data = root.getCipher().decrypt(internalPasswordExt, encryptedData);
            return StorageUtils.getString(data);
        }
        catch (IllegalStateException illegalStateException) {
            return null;
        }
        catch (IllegalBlockSizeException illegalBlockSizeException) {
            return null;
        }
        catch (BadPaddingException badPaddingException) {
            return null;
        }
        catch (StorageException storageException) {
            return null;
        }
    }

    private static SecurePreferences recoveryNode(SecurePreferences root, String moduleID) {
        return root.node(PASSWORD_RECOVERY_NODE).node(moduleID);
    }

    private static String mashPassword(String[] answers) {
        String internalPassword;
        StringBuffer tmp = new StringBuffer();
        int i = 0;
        while (i < answers.length) {
            tmp.append(answers[i].trim());
            ++i;
        }
        StringBuffer mix = new StringBuffer();
        int pos = tmp.length() - 1;
        int i2 = 0;
        while (i2 <= pos) {
            mix.append(tmp.charAt(i2));
            if (i2 < pos) {
                mix.append(tmp.charAt(pos));
            }
            --pos;
            ++i2;
        }
        try {
            MessageDigest digest = MessageDigest.getInstance(DIGEST_ALGORITHM);
            byte[] digested = digest.digest(StorageUtils.getBytes(mix.toString()));
            internalPassword = EncodingUtils.encodeBase64(digested);
        }
        catch (NoSuchAlgorithmException noSuchAlgorithmException) {
            String msg = NLS.bind((String)SecAuthMessages.noDigest, (Object)DIGEST_ALGORITHM);
            AuthPlugin.getDefault().logMessage(msg);
            internalPassword = mix.toString();
        }
        return internalPassword;
    }
}

