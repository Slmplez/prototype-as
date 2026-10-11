/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.team.internal.core;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.team.core.IFileContentManager;
import org.eclipse.team.core.IStringMapping;
import org.eclipse.team.internal.core.PluginStringMappings;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.UserStringMappings;

public class FileContentManager
implements IFileContentManager {
    private static final String PREF_TEAM_EXTENSION_TYPES = "file_types";
    private static final String PREF_TEAM_FILENAME_TYPES = "cvs_mode_for_file_without_extensions";
    private final UserStringMappings fUserExtensionMappings = new UserExtensionMappings("file_types");
    private final UserStringMappings fUserNameMappings = new UserStringMappings("cvs_mode_for_file_without_extensions");
    private PluginStringMappings fPluginExtensionMappings = new PluginStringMappings("fileTypes", "extension");
    private IContentType textContentType;

    public int getTypeForName(String filename) {
        int userType = this.fUserNameMappings.getType(filename);
        return userType;
    }

    public int getTypeForExtension(String extension) {
        int userType = this.fUserExtensionMappings.getType(extension);
        int pluginType = this.fPluginExtensionMappings.getType(extension);
        return userType != 0 ? userType : pluginType;
    }

    public void addNameMappings(String[] names, int[] types) {
        this.fUserNameMappings.addStringMappings(names, types);
    }

    public void addExtensionMappings(String[] extensions, int[] types) {
        this.fUserExtensionMappings.addStringMappings(extensions, types);
    }

    public void setNameMappings(String[] names, int[] types) {
        this.fUserNameMappings.setStringMappings(names, types);
    }

    public void setExtensionMappings(String[] extensions, int[] types) {
        this.fUserExtensionMappings.setStringMappings(extensions, types);
    }

    public IStringMapping[] getNameMappings() {
        return this.getMappings(this.fUserNameMappings, null);
    }

    public IStringMapping[] getExtensionMappings() {
        return this.getMappings(this.fUserExtensionMappings, this.fPluginExtensionMappings);
    }

    public int getType(IStorage storage) {
        IContentType textType;
        int type;
        String name = storage.getName();
        if (name != null && (type = this.getTypeForName(name)) != 0) {
            return type;
        }
        String extension = FileContentManager.getFileExtension(name);
        if (extension != null && (type = this.getTypeForExtension(extension)) != 0) {
            return type;
        }
        IContentType contentType = Platform.getContentTypeManager().findContentTypeFor(name);
        if (contentType != null && contentType.isKindOf(textType = this.getTextContentType())) {
            return 1;
        }
        return 0;
    }

    private IContentType getTextContentType() {
        if (this.textContentType == null) {
            this.textContentType = Platform.getContentTypeManager().getContentType("org.eclipse.core.runtime.text");
        }
        return this.textContentType;
    }

    public IStringMapping[] getDefaultNameMappings() {
        return new IStringMapping[0];
    }

    public IStringMapping[] getDefaultExtensionMappings() {
        return FileContentManager.getStringMappings(this.fPluginExtensionMappings.referenceMap());
    }

    public boolean isKnownExtension(String extension) {
        return this.fUserExtensionMappings.referenceMap().containsKey(extension) || this.fPluginExtensionMappings.referenceMap().containsKey(extension);
    }

    public boolean isKnownFilename(String filename) {
        return this.fUserNameMappings.referenceMap().containsKey(filename);
    }

    private static String getFileExtension(String name) {
        if (name == null) {
            return null;
        }
        int index = name.lastIndexOf(46);
        if (index == -1) {
            return null;
        }
        if (index == name.length() - 1) {
            return "";
        }
        return name.substring(index + 1);
    }

    private static IStringMapping[] getStringMappings(Map map) {
        IStringMapping[] result = new IStringMapping[map.size()];
        int index = 0;
        Iterator iter = map.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            result[index++] = new StringMapping((String)entry.getKey(), (Integer)entry.getValue());
        }
        return result;
    }

    private IStringMapping[] getMappings(UserStringMappings userMappings, PluginStringMappings pluginMappings) {
        HashMap mappings = new HashMap();
        if (pluginMappings != null) {
            mappings.putAll(pluginMappings.referenceMap());
        }
        mappings.putAll(userMappings.referenceMap());
        return FileContentManager.getStringMappings(mappings);
    }

    private static class StringMapping
    implements IStringMapping {
        private final String fString;
        private final int fType;

        public StringMapping(String string, int type) {
            this.fString = string;
            this.fType = type;
        }

        public String getString() {
            return this.fString;
        }

        public int getType() {
            return this.fType;
        }
    }

    private static class UserExtensionMappings
    extends UserStringMappings {
        public UserExtensionMappings(String key) {
            super(key);
        }

        protected Map loadMappingsFromPreferences() {
            Map result = super.loadMappingsFromPreferences();
            if (this.loadMappingsFromOldWorkspace(result)) {
                TeamPlugin.getPlugin().savePluginPreferences();
            }
            return result;
        }

        private boolean loadMappingsFromOldWorkspace(Map map) {
            String STATE_FILE = ".fileTypes";
            IPath pluginStateLocation = TeamPlugin.getPlugin().getStateLocation().append(STATE_FILE);
            File f = pluginStateLocation.toFile();
            if (!f.exists()) {
                return false;
            }
            try {
                DataInputStream input = new DataInputStream(new FileInputStream(f));
                try {
                    map.putAll(this.readOldFormatExtensionMappings(input));
                }
                finally {
                    input.close();
                    f.delete();
                }
            }
            catch (IOException ex) {
                TeamPlugin.log(4, ex.getMessage(), ex);
                return false;
            }
            return true;
        }

        private Map readOldFormatExtensionMappings(DataInputStream input) throws IOException {
            TreeMap<String, Integer> result = new TreeMap<String, Integer>();
            int numberOfMappings = 0;
            try {
                numberOfMappings = input.readInt();
            }
            catch (EOFException eOFException) {
                return Collections.EMPTY_MAP;
            }
            int i = 0;
            while (i < numberOfMappings) {
                String extension = input.readUTF();
                int type = input.readInt();
                result.put(extension, new Integer(type));
                ++i;
            }
            return result;
        }
    }
}

