/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.ui.progress.IProgressConstants;

public interface IProgressConstants2
extends IProgressConstants {
    public static final String PROPERTY_PREFIX = "org.eclipse.ui.workbench.progress";
    public static final QualifiedName COMMAND_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "command");
    public static final QualifiedName SHOW_IN_TASKBAR_ICON_PROPERTY = new QualifiedName("org.eclipse.ui.workbench.progress", "inTaskBarIcon");
}

