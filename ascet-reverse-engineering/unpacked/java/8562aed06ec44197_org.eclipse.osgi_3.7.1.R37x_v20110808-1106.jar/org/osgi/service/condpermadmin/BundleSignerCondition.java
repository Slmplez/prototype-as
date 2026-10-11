/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkUtil;
import org.osgi.service.condpermadmin.Condition;
import org.osgi.service.condpermadmin.ConditionInfo;

public class BundleSignerCondition {
    private static final String CONDITION_TYPE = "org.osgi.service.condpermadmin.BundleSignerCondition";

    public static Condition getCondition(Bundle bundle, ConditionInfo info) {
        if (!CONDITION_TYPE.equals(info.getType())) {
            throw new IllegalArgumentException("ConditionInfo must be of type \"org.osgi.service.condpermadmin.BundleSignerCondition\"");
        }
        String[] args = info.getArgs();
        if (args.length != 1 && args.length != 2) {
            throw new IllegalArgumentException("Illegal number of args: " + args.length);
        }
        Map<X509Certificate, List<X509Certificate>> signers = bundle.getSignerCertificates(2);
        boolean match = false;
        Iterator<List<X509Certificate>> iterator = signers.values().iterator();
        while (iterator.hasNext()) {
            List<X509Certificate> signerCerts = iterator.next();
            ArrayList<String> dnChain = new ArrayList<String>(signerCerts.size());
            Iterator<X509Certificate> iterator2 = signerCerts.iterator();
            while (iterator2.hasNext()) {
                X509Certificate signer = iterator2.next();
                dnChain.add(signer.getSubjectDN().getName());
            }
            if (!FrameworkUtil.matchDistinguishedNameChain(args[0], dnChain)) continue;
            match = true;
            break;
        }
        boolean negate = args.length == 2 ? "!".equals(args[1]) : false;
        return negate ^ match ? Condition.TRUE : Condition.FALSE;
    }

    private BundleSignerCondition() {
    }
}

