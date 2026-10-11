/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.DelegatingResourceLocator
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.DelegatingResourceLocator;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.IChildCreationExtender;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChildCreationExtenderManager
extends DelegatingResourceLocator {
    protected ResourceLocator primaryResourceLocator;
    protected String namespace;
    protected ChildCreationExtenderList childCreationExtenders;

    public ChildCreationExtenderManager(ResourceLocator primaryResourceLocator, String namespace) {
        this.primaryResourceLocator = primaryResourceLocator;
        this.namespace = namespace;
    }

    protected ResourceLocator[] getDelegateResourceLocators() {
        this.getChildCreationExtenders();
        return this.childCreationExtenders.getDelegateResourceLocators();
    }

    protected ResourceLocator getPrimaryResourceLocator() {
        return this.primaryResourceLocator;
    }

    public List<IChildCreationExtender> getChildCreationExtenders() {
        if (this.childCreationExtenders == null) {
            this.childCreationExtenders = new ChildCreationExtenderList();
            for (IChildCreationExtender.Descriptor descriptor : IChildCreationExtender.Descriptor.Registry.INSTANCE.getDescriptors(this.namespace)) {
                this.childCreationExtenders.add(descriptor.createChildCreationExtender());
            }
        }
        return this.childCreationExtenders;
    }

    public List<?> getNewChildDescriptors(Object object, EditingDomain editingDomain) {
        ArrayList result = new ArrayList();
        for (IChildCreationExtender childCreationExtender : this.getChildCreationExtenders()) {
            result.addAll(childCreationExtender.getNewChildDescriptors(object, editingDomain));
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ChildCreationExtenderList
    extends BasicEList<IChildCreationExtender> {
        private static final long serialVersionUID = 1L;
        private static final ResourceLocator[] NO_RESOURCE_LOCATORS = new ResourceLocator[0];
        protected ResourceLocator[] delegateResourceLocators = NO_RESOURCE_LOCATORS;
        protected int expectedModCount = this.modCount;

        protected boolean canContainNull() {
            return false;
        }

        protected Object[] newData(int capacity) {
            return new IChildCreationExtender[capacity];
        }

        protected ResourceLocator[] getDelegateResourceLocators() {
            if (this.expectedModCount != this.modCount) {
                this.expectedModCount = this.modCount;
                if (this.size == 0) {
                    this.delegateResourceLocators = NO_RESOURCE_LOCATORS;
                } else {
                    IChildCreationExtender[] childCreationExtenders = (IChildCreationExtender[])this.data;
                    this.delegateResourceLocators = new ResourceLocator[this.size];
                    int i = 0;
                    while (i < this.size) {
                        this.delegateResourceLocators[i] = childCreationExtenders[i].getResourceLocator();
                        ++i;
                    }
                }
            }
            return this.delegateResourceLocators;
        }
    }
}

