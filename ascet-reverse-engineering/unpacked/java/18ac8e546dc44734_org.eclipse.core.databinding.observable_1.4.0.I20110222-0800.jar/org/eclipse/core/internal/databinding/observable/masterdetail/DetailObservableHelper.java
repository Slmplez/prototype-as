/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.internal.databinding.observable.Util;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

class DetailObservableHelper {
    DetailObservableHelper() {
    }

    static void warnIfDifferentRealms(Realm detailRealm, Realm innerObservableRealm) {
        if (!Util.equals(detailRealm, innerObservableRealm)) {
            Throwable throwable = new Throwable();
            throwable.fillInStackTrace();
            String message = "Inner observable realm (" + innerObservableRealm + ") not equal to detail realm (" + detailRealm + ")";
            Policy.getLog().log((IStatus)new Status(2, "org.eclipse.core.databinding", message, throwable));
        }
    }
}

