/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage.friends;

import java.util.Iterator;
import java.util.List;

public class PasswordProviderDescription {
    private static final String EMPTY_STRING = "";
    private int priority;
    private String id;
    private String name;
    private String description;
    private List hints;

    public PasswordProviderDescription(String name, String id, int priority, String description, List hints) {
        this.id = id;
        this.name = name;
        this.priority = priority;
        this.description = description;
        this.hints = hints;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getId() {
        return this.id;
    }

    public String getDescription() {
        return this.description == null ? EMPTY_STRING : this.description;
    }

    public boolean hasHint(String hint) {
        if (this.hints == null) {
            return false;
        }
        Iterator i = this.hints.iterator();
        while (i.hasNext()) {
            String candidate = (String)i.next();
            if (!hint.equalsIgnoreCase(candidate)) continue;
            return true;
        }
        return false;
    }

    public String getName() {
        if (this.name == null || this.name.length() == 0) {
            return this.id;
        }
        return this.name;
    }
}

