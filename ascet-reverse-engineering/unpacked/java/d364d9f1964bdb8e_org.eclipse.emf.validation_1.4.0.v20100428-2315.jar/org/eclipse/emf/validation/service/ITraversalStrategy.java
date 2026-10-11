/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.EcoreUtil$ContentTreeIterator
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.validation.service.AbstractTraversalStrategy;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ITraversalStrategy {
    public void startTraversal(Collection<? extends EObject> var1, IProgressMonitor var2);

    public boolean hasNext();

    public EObject next();

    public boolean isClientContextChanged();

    public void elementValidated(EObject var1, IStatus var2);

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class Flat
    extends AbstractTraversalStrategy {
        @Override
        protected int countElements(Collection<? extends EObject> traversalRoots) {
            return traversalRoots.size();
        }

        @Override
        protected Iterator<? extends EObject> createIterator(Collection<? extends EObject> traversalRoots) {
            return traversalRoots.iterator();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class Recursive
    extends AbstractTraversalStrategy {
        private Collection<EObject> roots;
        private boolean contextChanged = true;

        @Override
        public void startTraversal(Collection<? extends EObject> traversalRoots, IProgressMonitor progressMonitor) {
            this.roots = this.makeTargetsDisjoint(traversalRoots);
            super.startTraversal(traversalRoots, progressMonitor);
        }

        private Collection<EObject> getRoots() {
            return this.roots;
        }

        @Override
        protected int countElements(Collection<? extends EObject> ignored) {
            return this.countRecursive(this.getRoots());
        }

        private int countRecursive(Collection<? extends EObject> elements) {
            int result = 0;
            result = elements.size();
            for (EObject eObject : elements) {
                result += this.countRecursive((Collection<? extends EObject>)eObject.eContents());
            }
            return result;
        }

        @Override
        protected Iterator<? extends EObject> createIterator(Collection<? extends EObject> ignored) {
            return new EcoreUtil.ContentTreeIterator<EObject>(this.getRoots()){
                private static final long serialVersionUID = -5653134989235663973L;

                public Iterator<EObject> getChildren(Object obj) {
                    if (obj == Recursive.this.getRoots()) {
                        return new Iterator<EObject>(){
                            private final Iterator<EObject> delegate;
                            {
                                this.delegate = Recursive.this.getRoots().iterator();
                            }

                            @Override
                            public boolean hasNext() {
                                return this.delegate.hasNext();
                            }

                            @Override
                            public EObject next() {
                                Recursive.this.contextChanged = true;
                                return this.delegate.next();
                            }

                            @Override
                            public void remove() {
                                this.delegate.remove();
                            }
                        };
                    }
                    return super.getChildren(obj);
                }

                public EObject next() {
                    Recursive.this.contextChanged = false;
                    return (EObject)super.next();
                }
            };
        }

        @Override
        public boolean isClientContextChanged() {
            return this.contextChanged;
        }

        private Set<EObject> makeTargetsDisjoint(Collection<? extends EObject> objects) {
            HashSet<EObject> result = new HashSet<EObject>();
            for (EObject eObject : objects) {
                if (EcoreUtil.isAncestor(objects, (EObject)((InternalEObject)eObject).eInternalContainer())) continue;
                result.add(eObject);
            }
            return result;
        }
    }
}

