/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys.model;

import org.eclipse.ui.internal.keys.model.KeyController;

public class ModelElement {
    public static final String PROP_PARENT = "parent";
    public static final String PROP_ID = "id";
    public static final String PROP_NAME = "name";
    public static final String PROP_DESCRIPTION = "description";
    public static final String PROP_MODEL_OBJECT = "modelObject";
    protected KeyController controller;
    private ModelElement parent;
    private String id;
    private String name;
    private String description;
    private Object modelObject;

    public ModelElement(KeyController kc) {
        this.controller = kc;
    }

    public ModelElement getParent() {
        return this.parent;
    }

    public void setParent(ModelElement parent) {
        ModelElement old = this.parent;
        this.parent = parent;
        this.controller.firePropertyChange(this, PROP_PARENT, old, parent);
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        String old = this.id;
        this.id = id;
        this.controller.firePropertyChange(this, PROP_ID, old, id);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        String old = this.name;
        this.name = name;
        this.controller.firePropertyChange(this, PROP_NAME, old, name);
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        String old = this.description;
        this.description = description;
        this.controller.firePropertyChange(this, PROP_DESCRIPTION, old, description);
    }

    public Object getModelObject() {
        return this.modelObject;
    }

    public void setModelObject(Object o) {
        Object old = this.modelObject;
        this.modelObject = o;
        this.controller.firePropertyChange(this, PROP_MODEL_OBJECT, old, o);
    }
}

