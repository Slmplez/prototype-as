/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal.modeled;

import java.util.Iterator;
import java.util.LinkedList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;

public class ValidationModelOperationsImpl {
    static final String SLASH = "/";

    public static String categoryGetPath(Category category) {
        StringBuilder builder = new StringBuilder(50);
        LinkedList<Category> pathToTop = new LinkedList<Category>();
        Category cat = category;
        while (cat != null) {
            pathToTop.addFirst(cat);
            cat = cat.getParentCategory();
        }
        Iterator i = pathToTop.iterator();
        while (i.hasNext()) {
            Category cat2 = (Category)i.next();
            builder.append(cat2.getId());
            if (!i.hasNext()) continue;
            builder.append(SLASH);
        }
        return builder.toString();
    }
}

