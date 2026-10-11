/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

public interface IFilterMatcherDescriptor {
    public static final String ARGUMENT_TYPE_FILTER_MATCHER = "filterMatcher";
    public static final String ARGUMENT_TYPE_FILTER_MATCHERS = "filterMatchers";
    public static final String ARGUMENT_TYPE_NONE = "none";
    public static final String ARGUMENT_TYPE_STRING = "string";

    public String getArgumentType();

    public String getDescription();

    public String getId();

    public String getName();

    public boolean isFirstOrdering();
}

