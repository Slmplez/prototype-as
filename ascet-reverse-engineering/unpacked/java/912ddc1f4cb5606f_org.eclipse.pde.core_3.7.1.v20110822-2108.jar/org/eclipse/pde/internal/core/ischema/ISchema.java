/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ischema;

import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IBaseModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.ischema.IDocumentSection;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaInclude;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;

public interface ISchema
extends ISchemaObject,
IBaseModel,
IModelChangeProvider {
    public static final String P_POINT = "pointId";
    public static final String P_PLUGIN = "pluginId";
    public static final int REFRESH_ADD = 1;
    public static final int REFRESH_DELETE = 2;
    public static final int REFRESH_RENAME = 3;

    public ISchemaElement findElement(String var1);

    public ISchemaElement[] getCandidateChildren(ISchemaElement var1);

    public IDocumentSection[] getDocumentSections();

    public int getElementCount();

    public int getResolvedElementCount();

    public ISchemaElement[] getElements();

    public String[] getElementNames();

    public ISchemaElement[] getResolvedElements();

    public String getQualifiedPointId();

    public String getPointId();

    public void setPointId(String var1) throws CoreException;

    public String getPluginId();

    public void setPluginId(String var1) throws CoreException;

    public ISchemaDescriptor getSchemaDescriptor();

    public URL getURL();

    public ISchemaInclude[] getIncludes();

    public boolean isDeperecated();

    public boolean isInternal();

    public String getDeprecatedSuggestion();

    public double getSchemaVersion();
}

