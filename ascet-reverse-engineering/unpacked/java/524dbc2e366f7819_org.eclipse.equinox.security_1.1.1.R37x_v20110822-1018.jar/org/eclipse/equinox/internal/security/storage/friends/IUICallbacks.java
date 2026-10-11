/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage.friends;

import org.eclipse.equinox.internal.security.storage.friends.IStorageTask;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;

public interface IUICallbacks {
    public void setupPasswordRecovery(int var1, String var2, IPreferencesContainer var3);

    public Boolean ask(String var1);

    public void execute(IStorageTask var1) throws StorageException;

    public boolean runningUI();
}

