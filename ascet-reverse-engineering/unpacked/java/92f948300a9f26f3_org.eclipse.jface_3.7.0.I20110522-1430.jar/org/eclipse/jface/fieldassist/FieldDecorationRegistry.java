/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.fieldassist;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Image;

public class FieldDecorationRegistry {
    public static final String DEC_CONTENT_PROPOSAL = "DEC_CONTENT_PROPOSAL";
    public static final String DEC_REQUIRED = "DEC_REQUIRED";
    public static final String DEC_ERROR = "DEC_ERROR";
    public static final String DEC_WARNING = "DEC_WARNING";
    public static final String DEC_INFORMATION = "DEC_INFORMATION";
    public static final String DEC_ERROR_QUICKFIX = "DEC_ERRORQUICKFIX";
    private static final String IMG_DEC_FIELD_CONTENT_PROPOSAL = "org.eclipse.jface.fieldassist.IMG_DEC_FIELD_CONTENT_PROPOSAL";
    private static final String IMG_DEC_FIELD_REQUIRED = "org.eclipse.jface.fieldassist.IMG_DEC_FIELD_REQUIRED";
    private static final String IMG_DEC_FIELD_ERROR = "org.eclipse.jface.fieldassist.IMG_DEC_FIELD_ERROR";
    private static final String IMG_DEC_FIELD_ERROR_QUICKFIX = "org.eclipse.jface.fieldassist.IMG_DEC_FIELD_ERROR_QUICKFIX";
    private static final String IMG_DEC_FIELD_WARNING = "org.eclipse.jface.fieldassist.IMG_DEC_FIELD_WARNING";
    private static final String IMG_DEC_FIELD_INFO = "org.eclipse.jface.fieldassist.IMG_DEC_FIELD_INFO";
    private static FieldDecorationRegistry defaultInstance;
    private int maxDecorationWidth = 0;
    private int maxDecorationHeight = 0;
    private HashMap decorations = new HashMap();
    static /* synthetic */ Class class$0;

    static {
        ImageRegistry imageRegistry = JFaceResources.getImageRegistry();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.fieldassist.FieldDecorationRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        imageRegistry.put(IMG_DEC_FIELD_CONTENT_PROPOSAL, ImageDescriptor.createFromFile(clazz, "images/contassist_ovr.gif"));
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jface.fieldassist.FieldDecorationRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        imageRegistry.put(IMG_DEC_FIELD_ERROR, ImageDescriptor.createFromFile(clazz2, "images/error_ovr.gif"));
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jface.fieldassist.FieldDecorationRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        imageRegistry.put(IMG_DEC_FIELD_WARNING, ImageDescriptor.createFromFile(clazz3, "images/warn_ovr.gif"));
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jface.fieldassist.FieldDecorationRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        imageRegistry.put(IMG_DEC_FIELD_REQUIRED, ImageDescriptor.createFromFile(clazz4, "images/required_field_cue.gif"));
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jface.fieldassist.FieldDecorationRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        imageRegistry.put(IMG_DEC_FIELD_ERROR_QUICKFIX, ImageDescriptor.createFromFile(clazz5, "images/errorqf_ovr.gif"));
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jface.fieldassist.FieldDecorationRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        imageRegistry.put(IMG_DEC_FIELD_INFO, ImageDescriptor.createFromFile(clazz6, "images/info_ovr.gif"));
        FieldDecorationRegistry.getDefault().registerFieldDecoration(DEC_CONTENT_PROPOSAL, JFaceResources.getString("FieldDecorationRegistry.contentAssistMessage"), IMG_DEC_FIELD_CONTENT_PROPOSAL, imageRegistry);
        FieldDecorationRegistry.getDefault().registerFieldDecoration(DEC_ERROR, JFaceResources.getString("FieldDecorationRegistry.errorMessage"), IMG_DEC_FIELD_ERROR, imageRegistry);
        FieldDecorationRegistry.getDefault().registerFieldDecoration(DEC_ERROR_QUICKFIX, JFaceResources.getString("FieldDecorationRegistry.errorQuickFixMessage"), IMG_DEC_FIELD_ERROR_QUICKFIX, imageRegistry);
        FieldDecorationRegistry.getDefault().registerFieldDecoration(DEC_WARNING, null, IMG_DEC_FIELD_WARNING, imageRegistry);
        FieldDecorationRegistry.getDefault().registerFieldDecoration(DEC_INFORMATION, null, IMG_DEC_FIELD_INFO, imageRegistry);
        FieldDecorationRegistry.getDefault().registerFieldDecoration(DEC_REQUIRED, JFaceResources.getString("FieldDecorationRegistry.requiredFieldMessage"), IMG_DEC_FIELD_REQUIRED, imageRegistry);
    }

    public static FieldDecorationRegistry getDefault() {
        if (defaultInstance == null) {
            defaultInstance = new FieldDecorationRegistry();
        }
        return defaultInstance;
    }

    public static void setDefault(FieldDecorationRegistry defaultRegistry) {
        defaultInstance = defaultRegistry;
    }

    public int getMaximumDecorationWidth() {
        return this.maxDecorationWidth;
    }

    public int getMaximumDecorationHeight() {
        return this.maxDecorationHeight;
    }

    public void registerFieldDecoration(String id, String description, Image image) {
        this.decorations.put(id, new Entry(description, image));
        this.recomputeMaximums();
    }

    public void registerFieldDecoration(String id, String description, String imageId) {
        this.decorations.put(id, new Entry(description, imageId, JFaceResources.getImageRegistry()));
        this.recomputeMaximums();
    }

    public void registerFieldDecoration(String id, String description, String imageId, ImageRegistry imageRegistry) {
        this.decorations.put(id, new Entry(description, imageId, imageRegistry));
        this.recomputeMaximums();
    }

    public void unregisterFieldDecoration(String id) {
        this.decorations.remove(id);
        this.recomputeMaximums();
    }

    public FieldDecoration getFieldDecoration(String id) {
        Object entry = this.decorations.get(id);
        if (entry == null) {
            return null;
        }
        return ((Entry)entry).getDecoration();
    }

    private void recomputeMaximums() {
        Iterator entries = this.decorations.values().iterator();
        this.maxDecorationHeight = 0;
        this.maxDecorationWidth = 0;
        while (entries.hasNext()) {
            Image image = ((Entry)entries.next()).getDecoration().getImage();
            if (image == null) continue;
            this.maxDecorationHeight = Math.max(this.maxDecorationHeight, image.getBounds().height);
            this.maxDecorationWidth = Math.max(this.maxDecorationWidth, image.getBounds().width);
        }
    }

    class Entry {
        private String description;
        private String imageId;
        private ImageRegistry imageRegistry;
        private Image image;
        private FieldDecoration decoration;

        Entry(String description, String imageId, ImageRegistry registry) {
            this.description = description;
            this.imageId = imageId;
            this.imageRegistry = registry;
        }

        Entry(String description, Image image) {
            this.description = description;
            this.image = image;
        }

        FieldDecoration getDecoration() {
            if (this.decoration == null) {
                if (this.image == null) {
                    if (this.imageRegistry == null) {
                        this.imageRegistry = JFaceResources.getImageRegistry();
                    }
                    this.image = this.imageRegistry.get(this.imageId);
                }
                this.decoration = new FieldDecoration(this.image, this.description);
            }
            this.description = null;
            this.imageId = null;
            this.imageRegistry = null;
            this.image = null;
            return this.decoration;
        }
    }
}

