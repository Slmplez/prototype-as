/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.core.importing.provisional;

import org.eclipse.team.core.importing.provisional.IBundleImporterDelegate;

public interface IBundleImporter
extends IBundleImporterDelegate {
    public String getId();

    public String getDescription();

    public String getName();
}

