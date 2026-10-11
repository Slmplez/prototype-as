/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.intro;

import org.eclipse.osgi.util.NLS;

public class IntroMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.ui.internal.intro.intro";
    public static String Intro_could_not_create_part;
    public static String Intro_could_not_create_proxy;
    public static String Intro_could_not_create_descriptor;
    public static String Intro_action_text;
    public static String Intro_default_title;
    public static String Intro_missing_product_title;
    public static String Intro_missing_product_message;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.intro.IntroMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

