/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.preference;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;

public class PreferenceNode
implements IPreferenceNode {
    private IPreferencePage page;
    private List subNodes;
    private String classname;
    private String id;
    private String label;
    private ImageDescriptor imageDescriptor;
    private Image image;

    public PreferenceNode(String id) {
        Assert.isNotNull((Object)id);
        this.id = id;
    }

    public PreferenceNode(String id, String label, ImageDescriptor image, String className) {
        this(id);
        this.imageDescriptor = image;
        Assert.isNotNull((Object)label);
        this.label = label;
        this.classname = className;
    }

    public PreferenceNode(String id, IPreferencePage preferencePage) {
        this(id);
        Assert.isNotNull((Object)preferencePage);
        this.page = preferencePage;
    }

    public void add(IPreferenceNode node) {
        if (this.subNodes == null) {
            this.subNodes = new ArrayList();
        }
        this.subNodes.add(node);
    }

    private Object createObject(String className) {
        Assert.isNotNull((Object)className);
        try {
            Class<?> cl = Class.forName(className);
            if (cl != null) {
                return cl.newInstance();
            }
        }
        catch (ClassNotFoundException classNotFoundException) {
            return null;
        }
        catch (InstantiationException instantiationException) {
            return null;
        }
        catch (IllegalAccessException illegalAccessException) {
            return null;
        }
        catch (NoSuchMethodError noSuchMethodError) {
            return null;
        }
        return null;
    }

    public void createPage() {
        this.page = (IPreferencePage)this.createObject(this.classname);
        if (this.getLabelImage() != null) {
            this.page.setImageDescriptor(this.imageDescriptor);
        }
        this.page.setTitle(this.label);
    }

    public void disposeResources() {
        if (this.image != null) {
            this.image.dispose();
            this.image = null;
        }
        if (this.page != null) {
            this.page.dispose();
            this.page = null;
        }
    }

    public IPreferenceNode findSubNode(String id) {
        Assert.isNotNull((Object)id);
        Assert.isTrue((id.length() > 0 ? 1 : 0) != 0);
        if (this.subNodes == null) {
            return null;
        }
        int size = this.subNodes.size();
        int i = 0;
        while (i < size) {
            IPreferenceNode node = (IPreferenceNode)this.subNodes.get(i);
            if (id.equals(node.getId())) {
                return node;
            }
            ++i;
        }
        return null;
    }

    public String getId() {
        return this.id;
    }

    protected ImageDescriptor getImageDescriptor() {
        return this.imageDescriptor;
    }

    public Image getLabelImage() {
        if (this.image == null && this.imageDescriptor != null) {
            this.image = this.imageDescriptor.createImage();
        }
        return this.image;
    }

    public String getLabelText() {
        if (this.page != null) {
            return this.page.getTitle();
        }
        return this.label;
    }

    public IPreferencePage getPage() {
        return this.page;
    }

    public IPreferenceNode[] getSubNodes() {
        if (this.subNodes == null) {
            return new IPreferenceNode[0];
        }
        return this.subNodes.toArray(new IPreferenceNode[this.subNodes.size()]);
    }

    public IPreferenceNode remove(String id) {
        IPreferenceNode node = this.findSubNode(id);
        if (node != null) {
            this.remove(node);
        }
        return node;
    }

    public boolean remove(IPreferenceNode node) {
        if (this.subNodes == null) {
            return false;
        }
        return this.subNodes.remove(node);
    }

    public void setPage(IPreferencePage newPage) {
        this.page = newPage;
    }
}

