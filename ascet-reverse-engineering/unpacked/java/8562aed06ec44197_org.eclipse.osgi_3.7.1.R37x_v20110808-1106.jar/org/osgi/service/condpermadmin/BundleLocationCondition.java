/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Dictionary;
import java.util.Hashtable;
import org.osgi.framework.Bundle;
import org.osgi.framework.Filter;
import org.osgi.framework.FrameworkUtil;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.condpermadmin.Condition;
import org.osgi.service.condpermadmin.ConditionInfo;

public class BundleLocationCondition {
    private static final String CONDITION_TYPE = "org.osgi.service.condpermadmin.BundleLocationCondition";

    public static Condition getCondition(final Bundle bundle, ConditionInfo info) {
        if (!CONDITION_TYPE.equals(info.getType())) {
            throw new IllegalArgumentException("ConditionInfo must be of type \"org.osgi.service.condpermadmin.BundleLocationCondition\"");
        }
        String[] args = info.getArgs();
        if (args.length != 1 && args.length != 2) {
            throw new IllegalArgumentException("Illegal number of args: " + args.length);
        }
        String bundleLocation = AccessController.doPrivileged(new PrivilegedAction<String>(){

            @Override
            public String run() {
                return bundle.getLocation();
            }
        });
        Filter filter = null;
        try {
            filter = FrameworkUtil.createFilter("(location=" + BundleLocationCondition.escapeLocation(args[0]) + ")");
        }
        catch (InvalidSyntaxException e) {
            throw new RuntimeException("Invalid filter: " + e.getFilter(), e);
        }
        Hashtable<String, String> matchProps = new Hashtable<String, String>(2);
        ((Dictionary)matchProps).put("location", bundleLocation);
        boolean negate = args.length == 2 ? "!".equals(args[1]) : false;
        return negate ^ filter.match(matchProps) ? Condition.TRUE : Condition.FALSE;
    }

    private BundleLocationCondition() {
    }

    private static String escapeLocation(String value) {
        boolean escaped = false;
        int inlen = value.length();
        int outlen = inlen << 1;
        char[] output = new char[outlen];
        value.getChars(0, inlen, output, inlen);
        int cursor = 0;
        int i = inlen;
        while (i < outlen) {
            char c = output[i];
            switch (c) {
                case '\\': {
                    if (i + 1 < outlen && output[i + 1] == '*') break;
                }
                case '(': 
                case ')': {
                    output[cursor] = 92;
                    ++cursor;
                    escaped = true;
                }
            }
            output[cursor] = c;
            ++cursor;
            ++i;
        }
        return escaped ? new String(output, 0, cursor) : value;
    }
}

