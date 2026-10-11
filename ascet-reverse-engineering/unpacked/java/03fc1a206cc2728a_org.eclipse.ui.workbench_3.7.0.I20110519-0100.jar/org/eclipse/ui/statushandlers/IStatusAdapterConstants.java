/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.ui.statushandlers;

import org.eclipse.core.runtime.QualifiedName;

public interface IStatusAdapterConstants {
    public static final String PROPERTY_PREFIX = "org.eclipse.ui.workbench.statusHandlers.adapters";
    public static final QualifiedName TITLE_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.statusHandlers.adapters", "title");
    public static final QualifiedName TIMESTAMP_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.statusHandlers.adapters", "timestamp");
    public static final QualifiedName EXPLANATION_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.statusHandlers.adapters", "explanation");
    public static final QualifiedName HINT_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.statusHandlers.adapters", "suggestedAction");
}

