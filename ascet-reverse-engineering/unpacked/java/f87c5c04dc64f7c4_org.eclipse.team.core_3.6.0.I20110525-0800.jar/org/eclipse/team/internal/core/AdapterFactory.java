/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.runtime.IAdapterFactory
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.team.internal.core.mapping.ModelProviderResourceMapping;

public class AdapterFactory
implements IAdapterFactory {
    static /* synthetic */ Class class$0;

    public Object getAdapter(Object adaptableObject, Class adapterType) {
        if (adaptableObject instanceof ModelProvider) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.resources.mapping.ResourceMapping");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapterType == clazz) {
                ModelProvider mp = (ModelProvider)adaptableObject;
                return new ModelProviderResourceMapping(mp);
            }
        }
        return null;
    }

    public Class[] getAdapterList() {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.resources.mapping.ResourceMapping");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        return classArray;
    }
}

