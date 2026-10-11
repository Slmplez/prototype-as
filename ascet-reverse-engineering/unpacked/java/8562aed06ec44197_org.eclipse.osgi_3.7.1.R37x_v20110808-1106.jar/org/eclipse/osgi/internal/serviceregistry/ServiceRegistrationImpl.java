/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.util.ArrayList;
import java.util.Dictionary;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.internal.serviceregistry.ModifiedServiceEvent;
import org.eclipse.osgi.internal.serviceregistry.ServiceProperties;
import org.eclipse.osgi.internal.serviceregistry.ServiceReferenceImpl;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.eclipse.osgi.internal.serviceregistry.ServiceUse;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceRegistrationImpl<S>
implements ServiceRegistration<S>,
Comparable<ServiceRegistrationImpl<?>> {
    private final Framework framework;
    private final ServiceRegistry registry;
    private final BundleContextImpl context;
    private final Bundle bundle;
    private final String[] clazzes;
    private final S service;
    private ServiceReferenceImpl<S> reference;
    private final List<BundleContextImpl> contextsUsing;
    private ServiceProperties properties;
    private final long serviceid;
    private int serviceranking;
    private final Object registrationLock = new Object();
    private int state;
    private static final int REGISTERED = 0;
    private static final int UNREGISTERING = 1;
    private static final int UNREGISTERED = 2;
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.osgi.internal.serviceregistry.ServiceRegistrationImpl");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        $assertionsDisabled = !clazz.desiredAssertionStatus();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    ServiceRegistrationImpl(ServiceRegistry registry, BundleContextImpl context, String[] clazzes, S service) {
        this.registry = registry;
        this.context = context;
        this.bundle = context.getBundleImpl();
        this.framework = context.getFramework();
        this.clazzes = clazzes;
        this.service = service;
        this.serviceid = registry.getNextServiceId();
        this.contextsUsing = new ArrayList<BundleContextImpl>(10);
        Object object = this.registrationLock;
        synchronized (object) {
            this.state = 0;
            this.reference = new ServiceReferenceImpl(this);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void register(Dictionary<String, ?> props) {
        ServiceReferenceImpl<S> ref;
        ServiceRegistry serviceRegistry = this.registry;
        synchronized (serviceRegistry) {
            this.context.checkValid();
            Object object = this.registrationLock;
            synchronized (object) {
                ref = this.reference;
                this.properties = this.createProperties(props);
            }
            if (Debug.DEBUG_SERVICES) {
                Debug.println(new StringBuffer("registerService[").append(this.bundle).append("](").append(this).append(")").toString());
            }
            this.registry.addServiceRegistration(this.context, this);
        }
        this.registry.publishServiceEvent(new ServiceEvent(1, ref));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setProperties(Dictionary<String, ?> props) {
        ServiceProperties previousProperties;
        ServiceReferenceImpl<S> ref;
        ServiceRegistry serviceRegistry = this.registry;
        synchronized (serviceRegistry) {
            Object object = this.registrationLock;
            synchronized (object) {
                if (this.state != 0) {
                    throw new IllegalStateException(Msg.SERVICE_ALREADY_UNREGISTERED_EXCEPTION);
                }
                ref = this.reference;
                previousProperties = this.properties;
                this.properties = this.createProperties(props);
            }
            this.registry.modifyServiceRegistration(this.context, this);
        }
        this.registry.publishServiceEvent(new ModifiedServiceEvent(ref, previousProperties));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void unregister() {
        ServiceReferenceImpl<S> ref;
        ServiceRegistry serviceRegistry = this.registry;
        synchronized (serviceRegistry) {
            Object object = this.registrationLock;
            synchronized (object) {
                if (this.state != 0) {
                    throw new IllegalStateException(Msg.SERVICE_ALREADY_UNREGISTERED_EXCEPTION);
                }
                if (Debug.DEBUG_SERVICES) {
                    Debug.println(new StringBuffer("unregisterService[").append(this.bundle).append("](").append(this).append(")").toString());
                }
                this.registry.removeServiceRegistration(this.context, this);
                this.state = 1;
                ref = this.reference;
            }
        }
        this.registry.publishServiceEvent(new ServiceEvent(4, ref));
        int size = 0;
        BundleContextImpl[] users = null;
        Object object = this.registrationLock;
        synchronized (object) {
            this.state = 2;
            size = this.contextsUsing.size();
            if (size > 0) {
                if (Debug.DEBUG_SERVICES) {
                    Debug.println("unregisterService: releasing users");
                }
                users = this.contextsUsing.toArray(new BundleContextImpl[size]);
            }
        }
        int i = 0;
        while (i < size) {
            this.releaseService(users[i]);
            ++i;
        }
        Object object2 = this.registrationLock;
        synchronized (object2) {
            this.contextsUsing.clear();
            this.reference = null;
        }
    }

    @Override
    public ServiceReference<S> getReference() {
        return this.getReferenceImpl();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    ServiceReferenceImpl<S> getReferenceImpl() {
        Object object = this.registrationLock;
        synchronized (object) {
            if (this.reference == null) {
                throw new IllegalStateException(Msg.SERVICE_ALREADY_UNREGISTERED_EXCEPTION);
            }
            return this.reference;
        }
    }

    private ServiceProperties createProperties(Dictionary<String, ?> p) {
        if (!$assertionsDisabled && !Thread.holdsLock(this.registrationLock)) {
            throw new AssertionError();
        }
        ServiceProperties props = new ServiceProperties(p);
        props.set("objectClass", this.clazzes, true);
        props.set("service.id", new Long(this.serviceid), true);
        props.setReadOnly();
        Object ranking = props.getProperty("service.ranking");
        this.serviceranking = ranking instanceof Integer ? (Integer)ranking : 0;
        return props;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ServiceProperties getProperties() {
        Object object = this.registrationLock;
        synchronized (object) {
            return this.properties;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Object getProperty(String key) {
        Object object = this.registrationLock;
        synchronized (object) {
            return this.properties.getProperty(key);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    String[] getPropertyKeys() {
        Object object = this.registrationLock;
        synchronized (object) {
            return this.properties.getPropertyKeys();
        }
    }

    long getId() {
        return this.serviceid;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    int getRanking() {
        Object object = this.registrationLock;
        synchronized (object) {
            return this.serviceranking;
        }
    }

    String[] getClasses() {
        return this.clazzes;
    }

    S getServiceObject() {
        return this.service;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Bundle getBundle() {
        Object object = this.registrationLock;
        synchronized (object) {
            block4: {
                if (this.reference != null) break block4;
                return null;
            }
            return this.bundle;
        }
    }

    public Bundle getRegisteringBundle() {
        return this.bundle;
    }

    Object getSafeService(BundleContextImpl user) {
        try {
            return this.getService(user);
        }
        catch (IllegalStateException illegalStateException) {
            return null;
        }
    }

    /*
     * Exception decompiling
     */
    Object getService(BundleContextImpl user) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [2[TRYBLOCK]], but top level block is 14[MONITOR]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean ungetService(BundleContextImpl user) {
        ServiceUse<?> use;
        Map<ServiceRegistrationImpl<?>, ServiceUse<?>> servicesInUse;
        Object object = this.registrationLock;
        synchronized (object) {
            if (this.state == 2) {
                return false;
            }
        }
        if (Debug.DEBUG_SERVICES) {
            Debug.println(new StringBuffer("ungetService[").append(user.getBundleImpl()).append("](").append(this).append(")").toString());
        }
        if ((servicesInUse = user.getServicesInUseMap()) == null) {
            return false;
        }
        Object object2 = servicesInUse;
        synchronized (object2) {
            use = servicesInUse.get(this);
            if (use == null) {
                return false;
            }
        }
        object2 = use;
        synchronized (object2) {
            if (!use.ungetService()) return true;
            Map<ServiceRegistrationImpl<?>, ServiceUse<?>> map = servicesInUse;
            synchronized (map) {
                Object object3 = this.registrationLock;
                synchronized (object3) {
                    servicesInUse.remove(this);
                    this.contextsUsing.remove(user);
                }
            }
            return true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void releaseService(BundleContextImpl user) {
        ServiceUse<?> use;
        Map<ServiceRegistrationImpl<?>, ServiceUse<?>> servicesInUse;
        Object object = this.registrationLock;
        synchronized (object) {
            if (this.reference == null) {
                return;
            }
        }
        if (Debug.DEBUG_SERVICES) {
            Debug.println(new StringBuffer("releaseService[").append(user.getBundleImpl()).append("](").append(this).append(")").toString());
        }
        if ((servicesInUse = user.getServicesInUseMap()) == null) {
            return;
        }
        Object object2 = servicesInUse;
        synchronized (object2) {
            Object object3 = this.registrationLock;
            synchronized (object3) {
                use = servicesInUse.remove(this);
                if (use == null) {
                    return;
                }
                this.contextsUsing.remove(user);
            }
        }
        object2 = use;
        synchronized (object2) {
            use.releaseService();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Bundle[] getUsingBundles() {
        Object object = this.registrationLock;
        synchronized (object) {
            int size;
            block7: {
                block6: {
                    if (this.state != 2) break block6;
                    return null;
                }
                size = this.contextsUsing.size();
                if (size != 0) break block7;
                return null;
            }
            Bundle[] bundles = new Bundle[size];
            int i = 0;
            while (i < size) {
                bundles[i] = this.contextsUsing.get(i).getBundleImpl();
                ++i;
            }
            return bundles;
        }
    }

    boolean isAssignableTo(Bundle client, String className) {
        return this.framework.isServiceAssignableTo(this.bundle, client, className, this.service.getClass());
    }

    public String toString() {
        int size = this.clazzes.length;
        StringBuffer sb = new StringBuffer(50 * size);
        sb.append('{');
        int i = 0;
        while (i < size) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.clazzes[i]);
            ++i;
        }
        sb.append("}=");
        sb.append(this.getProperties().toString());
        return sb.toString();
    }

    @Override
    public int compareTo(ServiceRegistrationImpl<?> other) {
        long otherId;
        int otherRanking;
        int thisRanking = this.getRanking();
        if (thisRanking != (otherRanking = other.getRanking())) {
            if (thisRanking < otherRanking) {
                return 1;
            }
            return -1;
        }
        long thisId = this.getId();
        if (thisId == (otherId = other.getId())) {
            return 0;
        }
        if (thisId < otherId) {
            return -1;
        }
        return 1;
    }
}

