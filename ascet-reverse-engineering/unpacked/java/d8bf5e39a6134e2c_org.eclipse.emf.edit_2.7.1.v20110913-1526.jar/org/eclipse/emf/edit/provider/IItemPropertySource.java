/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import java.util.List;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IItemPropertySource {
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object var1);

    public IItemPropertyDescriptor getPropertyDescriptor(Object var1, Object var2);

    public Object getEditableValue(Object var1);
}

