/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.hooks;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Dictionary;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface StorageHook
extends KeyedElement {
    public int getStorageVersion();

    public StorageHook create(BaseData var1) throws BundleException;

    public void initialize(Dictionary<String, String> var1) throws BundleException;

    public StorageHook load(BaseData var1, DataInputStream var2) throws IOException;

    public void save(DataOutputStream var1) throws IOException;

    public void copy(StorageHook var1);

    public void validate() throws IllegalArgumentException;

    public Dictionary<String, String> getManifest(boolean var1) throws BundleException;

    public boolean forgetStatusChange(int var1);

    public boolean forgetStartLevelChange(int var1);
}

