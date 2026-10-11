/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.sourcelookup.containers.ZipEntryStorage
 */
package org.eclipse.jdt.launching.sourcelookup;

import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ZipEntryStorage
extends org.eclipse.debug.core.sourcelookup.containers.ZipEntryStorage {
    public ZipEntryStorage(ZipFile archive, ZipEntry entry) {
        super(archive, entry);
    }
}

