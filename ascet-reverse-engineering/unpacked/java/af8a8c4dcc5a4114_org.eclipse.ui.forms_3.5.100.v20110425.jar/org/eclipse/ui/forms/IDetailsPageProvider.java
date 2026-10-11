/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.forms;

import org.eclipse.ui.forms.IDetailsPage;

public interface IDetailsPageProvider {
    public Object getPageKey(Object var1);

    public IDetailsPage getPage(Object var1);
}

