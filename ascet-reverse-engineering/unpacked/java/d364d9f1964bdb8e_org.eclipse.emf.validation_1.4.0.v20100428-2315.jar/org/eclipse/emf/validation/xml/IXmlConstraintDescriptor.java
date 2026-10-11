/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.emf.validation.xml;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

@Deprecated
public interface IXmlConstraintDescriptor
extends IConstraintDescriptor {
    public IConfigurationElement getConfig();

    public void resolveTargetTypes(String[] var1);
}

