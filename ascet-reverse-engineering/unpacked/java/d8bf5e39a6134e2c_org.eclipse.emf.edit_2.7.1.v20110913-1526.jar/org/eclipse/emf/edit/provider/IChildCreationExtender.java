/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IChildCreationExtender {
    public Collection<?> getNewChildDescriptors(Object var1, EditingDomain var2);

    public ResourceLocator getResourceLocator();

    public static interface Descriptor {
        public IChildCreationExtender createChildCreationExtender();

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static interface Registry {
            public static final Registry INSTANCE = EMFEditPlugin.getChildCreationExtenderDescriptorRegistry();

            public Collection<Descriptor> getDescriptors(String var1);

            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            public static class Impl
            extends HashMap<String, Collection<Descriptor>>
            implements Registry {
                private static final long serialVersionUID = 1L;
                protected Registry delegateRegistry;

                public Impl(Registry delegateRegistry) {
                    this.delegateRegistry = delegateRegistry;
                }

                @Override
                public Collection<Descriptor> getDescriptors(String namespace) {
                    Collection<Descriptor> descriptor = (Collection<Descriptor>)this.get(namespace);
                    return descriptor == null ? this.delegatedGetDescriptors(namespace) : descriptor;
                }

                protected Collection<Descriptor> delegatedGetDescriptors(String namespace) {
                    if (this.delegateRegistry != null) {
                        return this.delegateRegistry.getDescriptors(namespace);
                    }
                    return Collections.emptyList();
                }
            }
        }
    }
}

