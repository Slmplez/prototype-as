/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputerDelegate;

public interface ISourcePathComputer
extends ISourcePathComputerDelegate {
    public static final String ATTR_SOURCE_PATH_COMPUTER_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".SOURCE_PATH_COMPUTER_ID";

    public String getId();
}

