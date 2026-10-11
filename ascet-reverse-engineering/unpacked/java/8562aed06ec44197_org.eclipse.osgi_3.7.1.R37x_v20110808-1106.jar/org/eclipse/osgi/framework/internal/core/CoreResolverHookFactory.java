/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.internal.serviceregistry.ServiceReferenceImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.eclipse.osgi.internal.serviceregistry.ShrinkableCollection;
import org.eclipse.osgi.service.resolver.ResolverHookException;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.hooks.resolver.ResolverHook;
import org.osgi.framework.hooks.resolver.ResolverHookFactory;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRequirement;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CoreResolverHookFactory
implements ResolverHookFactory {
    private final BundleContextImpl context;
    private final ServiceRegistry registry;
    static /* synthetic */ Class class$0;

    public CoreResolverHookFactory(BundleContextImpl context, ServiceRegistry registry) {
        this.context = context;
        this.registry = registry;
    }

    void handleHookException(Throwable t, Object hook, String method, Bundle hookBundle, List<HookReference> hookRefs, boolean causeFailure) {
        if (Debug.DEBUG_HOOKS) {
            Debug.println(new StringBuffer(String.valueOf(hook.getClass().getName())).append(".").append(method).append("() exception:").toString());
            if (t != null) {
                Debug.printStackTrace(t);
            }
        }
        String message = NLS.bind(Msg.SERVICE_FACTORY_EXCEPTION, hook.getClass().getName(), method);
        if (causeFailure) {
            this.releaseHooks(hookRefs);
            throw new ResolverHookException(message, t);
        }
        BundleException be = new BundleException(message, 12, t);
        this.context.framework.publishFrameworkEvent(2, hookBundle, be);
    }

    private ServiceReferenceImpl<ResolverHookFactory>[] getHookReferences() {
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.osgi.framework.hooks.resolver.ResolverHookFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ServiceReferenceImpl<?>[] result = this.registry.getServiceReferences(this.context, clazz.getName(), null, false, false);
            return result;
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
    }

    @Override
    public ResolverHook begin(Collection<BundleRevision> triggers) {
        ServiceReferenceImpl<ResolverHookFactory>[] refs;
        List hookRefs;
        if (Debug.DEBUG_HOOKS) {
            Debug.println("ResolverHook.begin");
        }
        List list = hookRefs = (refs = this.getHookReferences()) == null ? Collections.EMPTY_LIST : new ArrayList(refs.length);
        if (refs != null) {
            ServiceReferenceImpl<ResolverHookFactory>[] serviceReferenceImplArray = refs;
            int n = refs.length;
            int n2 = 0;
            while (n2 < n) {
                ServiceReferenceImpl<ResolverHookFactory> hookRef = serviceReferenceImplArray[n2];
                ResolverHookFactory factory = this.context.getService(hookRef);
                if (factory != null) {
                    try {
                        ResolverHook hook = factory.begin(triggers);
                        if (hook != null) {
                            hookRefs.add(new HookReference(hookRef, hook));
                        }
                    }
                    catch (Throwable t) {
                        this.handleHookException(t, factory, "begin", hookRef.getBundle(), hookRefs, true);
                    }
                }
                ++n2;
            }
        }
        return new CoreResolverHook(hookRefs);
    }

    void releaseHooks(List<HookReference> hookRefs) {
        for (HookReference hookRef : hookRefs) {
            this.context.ungetService(hookRef.reference);
        }
        hookRefs.clear();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class CoreResolverHook
    implements ResolverHook {
        private final List<HookReference> hooks;

        CoreResolverHook(List<HookReference> hooks) {
            this.hooks = hooks;
        }

        @Override
        public void filterResolvable(Collection<BundleRevision> candidates) {
            if (Debug.DEBUG_HOOKS) {
                Debug.println(new StringBuffer("ResolverHook.filterResolvable(").append(candidates).append(")").toString());
            }
            if (this.hooks.isEmpty()) {
                return;
            }
            candidates = new ShrinkableCollection<BundleRevision>(candidates);
            for (HookReference hookRef : this.hooks) {
                if (hookRef.reference.getBundle() == null) {
                    CoreResolverHookFactory.this.handleHookException(null, hookRef.hook, "filterResolvable", hookRef.reference.getBundle(), this.hooks, true);
                    continue;
                }
                try {
                    hookRef.hook.filterResolvable(candidates);
                }
                catch (Throwable t) {
                    CoreResolverHookFactory.this.handleHookException(t, hookRef.hook, "filterResolvable", hookRef.reference.getBundle(), this.hooks, true);
                }
            }
        }

        @Override
        public void filterSingletonCollisions(BundleCapability singleton, Collection<BundleCapability> collisionCandidates) {
            if (Debug.DEBUG_HOOKS) {
                Debug.println(new StringBuffer("ResolverHook.filterSingletonCollisions(").append(singleton).append(", ").append(collisionCandidates).append(")").toString());
            }
            if (this.hooks.isEmpty()) {
                return;
            }
            collisionCandidates = new ShrinkableCollection<BundleCapability>(collisionCandidates);
            for (HookReference hookRef : this.hooks) {
                if (hookRef.reference.getBundle() == null) {
                    CoreResolverHookFactory.this.handleHookException(null, hookRef.hook, "filterSingletonCollisions", hookRef.reference.getBundle(), this.hooks, true);
                    continue;
                }
                try {
                    hookRef.hook.filterSingletonCollisions(singleton, collisionCandidates);
                }
                catch (Throwable t) {
                    CoreResolverHookFactory.this.handleHookException(t, hookRef.hook, "filterSingletonCollisions", hookRef.reference.getBundle(), this.hooks, true);
                }
            }
        }

        @Override
        public void filterMatches(BundleRequirement requirement, Collection<BundleCapability> candidates) {
            if (Debug.DEBUG_HOOKS) {
                Debug.println(new StringBuffer("ResolverHook.filterMatches(").append(requirement).append(", ").append(candidates).append(")").toString());
            }
            if (this.hooks.isEmpty()) {
                return;
            }
            candidates = new ShrinkableCollection<BundleCapability>(candidates);
            for (HookReference hookRef : this.hooks) {
                if (hookRef.reference.getBundle() == null) {
                    CoreResolverHookFactory.this.handleHookException(null, hookRef.hook, "filterMatches", hookRef.reference.getBundle(), this.hooks, true);
                    continue;
                }
                try {
                    hookRef.hook.filterMatches(requirement, candidates);
                }
                catch (Throwable t) {
                    CoreResolverHookFactory.this.handleHookException(t, hookRef.hook, "filterMatches", hookRef.reference.getBundle(), this.hooks, true);
                }
            }
        }

        @Override
        public void end() {
            if (Debug.DEBUG_HOOKS) {
                Debug.println("ResolverHook.end");
            }
            if (this.hooks.isEmpty()) {
                return;
            }
            for (HookReference hookRef : this.hooks) {
                if (hookRef.reference.getBundle() == null) continue;
                try {
                    hookRef.hook.end();
                }
                catch (Throwable t) {
                    CoreResolverHookFactory.this.handleHookException(t, hookRef.hook, "end", hookRef.reference.getBundle(), this.hooks, false);
                }
            }
            CoreResolverHookFactory.this.releaseHooks(this.hooks);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class HookReference {
        final ServiceReferenceImpl<ResolverHookFactory> reference;
        final ResolverHook hook;

        public HookReference(ServiceReferenceImpl<ResolverHookFactory> reference, ResolverHook hook) {
            this.reference = reference;
            this.hook = hook;
        }
    }
}

