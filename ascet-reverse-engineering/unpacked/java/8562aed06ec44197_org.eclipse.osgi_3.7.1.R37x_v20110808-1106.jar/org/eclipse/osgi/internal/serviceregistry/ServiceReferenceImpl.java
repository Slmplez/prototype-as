/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import org.eclipse.osgi.internal.serviceregistry.ServiceRegistrationImpl;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceReferenceImpl<S>
implements ServiceReference<S> {
    private final ServiceRegistrationImpl<S> registration;

    ServiceReferenceImpl(ServiceRegistrationImpl<S> registration) {
        this.registration = registration;
    }

    @Override
    public Object getProperty(String key) {
        return this.registration.getProperty(key);
    }

    @Override
    public String[] getPropertyKeys() {
        return this.registration.getPropertyKeys();
    }

    @Override
    public Bundle getBundle() {
        return this.registration.getBundle();
    }

    @Override
    public Bundle[] getUsingBundles() {
        return this.registration.getUsingBundles();
    }

    @Override
    public boolean isAssignableTo(Bundle bundle, String className) {
        return this.registration.isAssignableTo(bundle, className);
    }

    @Override
    public int compareTo(Object object) {
        long otherId;
        int otherRanking;
        ServiceRegistrationImpl<S> other = ((ServiceReferenceImpl)object).registration;
        int thisRanking = this.registration.getRanking();
        if (thisRanking != (otherRanking = other.getRanking())) {
            if (thisRanking < otherRanking) {
                return -1;
            }
            return 1;
        }
        long thisId = this.registration.getId();
        if (thisId == (otherId = other.getId())) {
            return 0;
        }
        if (thisId < otherId) {
            return 1;
        }
        return -1;
    }

    public int hashCode() {
        return this.registration.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServiceReferenceImpl)) {
            return false;
        }
        ServiceReferenceImpl other = (ServiceReferenceImpl)obj;
        return this.registration == other.registration;
    }

    public String toString() {
        return this.registration.toString();
    }

    public ServiceRegistrationImpl<S> getRegistration() {
        return this.registration;
    }

    String[] getClasses() {
        return this.registration.getClasses();
    }
}

