/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.debug.internal.core;

import java.util.Comparator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.debug.core.DebugPlugin;

public class LaunchConfigurationComparator
implements Comparator {
    private IConfigurationElement fConfigurationElement;
    private Comparator fDelegate;

    public LaunchConfigurationComparator(IConfigurationElement element) {
        this.fConfigurationElement = element;
    }

    protected Comparator getComparator() {
        if (this.fDelegate == null) {
            try {
                this.fDelegate = (Comparator)this.fConfigurationElement.createExecutableExtension("class");
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }
        return this.fDelegate;
    }

    public int compare(Object o1, Object o2) {
        return this.getComparator().compare(o1, o2);
    }

    public boolean equals(Object obj) {
        return this.getComparator().equals(obj);
    }
}

