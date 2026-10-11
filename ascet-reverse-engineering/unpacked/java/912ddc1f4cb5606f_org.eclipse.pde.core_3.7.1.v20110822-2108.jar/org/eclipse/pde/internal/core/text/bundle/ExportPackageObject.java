/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.StringTokenizer;
import java.util.TreeMap;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.text.bundle.CompositeManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.ExportPackageHeader;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PackageFriend;
import org.eclipse.pde.internal.core.text.bundle.PackageObject;

public class ExportPackageObject
extends PackageObject {
    private static final int NEWLINE_LIMIT = 3;
    private static final int NEWLINE_LIMIT_BOTH = 1;
    private static final long serialVersionUID = 1L;
    private TreeMap fFriends = new TreeMap();

    public ExportPackageObject(ManifestHeader header, ManifestElement element, String versionAttribute) {
        super(header, element, versionAttribute);
        this.processFriends();
    }

    public ExportPackageObject(ManifestHeader header, IPackageFragment fragment, String versionAttribute) {
        super(header, fragment.getElementName(), null, versionAttribute);
    }

    public ExportPackageObject(ManifestHeader header, String id, String version, String versionAttribute) {
        super(header, id, version, versionAttribute);
    }

    protected void processFriends() {
        String[] friends = this.getDirectives("x-friends");
        if (friends != null) {
            int i = 0;
            while (i < friends.length) {
                this.fFriends.put(friends[i], new PackageFriend(this, friends[i]));
                ++i;
            }
        }
    }

    public boolean isInternal() {
        return "true".equals(this.getDirective("x-internal")) || this.getDirective("x-friends") != null;
    }

    public void removeInternalDirective() {
        this.setDirective("x-internal", null);
        ((CompositeManifestHeader)this.fHeader).update(true);
    }

    public void setInternal(boolean internal) {
        boolean old = this.isInternal();
        if (!internal) {
            this.setDirective("x-internal", null);
            this.setDirective("x-friends", null);
        } else if (this.fFriends.size() == 0) {
            this.setDirective("x-internal", "true");
        } else {
            Iterator iter = this.fFriends.keySet().iterator();
            while (iter.hasNext()) {
                this.addDirective("x-friends", iter.next().toString());
            }
        }
        this.fHeader.update();
        this.firePropertyChanged(this, "x-internal", Boolean.toString(old), Boolean.toString(internal));
    }

    public PackageFriend[] getFriends() {
        return this.fFriends.values().toArray(new PackageFriend[this.fFriends.size()]);
    }

    public void addFriend(PackageFriend friend) {
        boolean oldIsInternal = this.isInternal();
        this.fFriends.put(friend.getName(), friend);
        this.addDirective("x-friends", friend.getName());
        this.setDirective("x-internal", null);
        this.fHeader.update();
        this.fireStructureChanged(friend, 1);
        this.firePropertyChanged(this, "x-internal", Boolean.toString(oldIsInternal), Boolean.FALSE.toString());
    }

    public void removeFriend(PackageFriend friend) {
        boolean hasInternalChanged = false;
        this.fFriends.remove(friend.getName());
        this.setDirective("x-friends", null);
        if (this.fFriends.size() == 0) {
            this.setDirective("x-internal", "true");
            hasInternalChanged = true;
        } else {
            Iterator iter = this.fFriends.keySet().iterator();
            while (iter.hasNext()) {
                this.addDirective("x-friends", iter.next().toString());
            }
        }
        this.fHeader.update();
        this.fireStructureChanged(friend, 2);
        if (hasInternalChanged) {
            this.firePropertyChanged(this, "x-internal", Boolean.FALSE.toString(), Boolean.TRUE.toString());
        }
    }

    public boolean hasFriend(String name) {
        return this.fFriends.containsKey(name);
    }

    public boolean hasSameVisibility(ExportPackageObject object) {
        if (object.isInternal() != this.isInternal()) {
            return false;
        }
        if (this.fFriends.size() != object.fFriends.size()) {
            return false;
        }
        Iterator iter = this.fFriends.keySet().iterator();
        while (iter.hasNext()) {
            if (object.fFriends.containsKey(iter.next())) continue;
            return false;
        }
        return true;
    }

    public void setUsesDirective(String value) {
        String oldValue = this.getUsesDirective();
        this.setDirective("uses", value);
        this.fHeader.update();
        this.firePropertyChanged(this, "uses", oldValue, value);
    }

    public String getUsesDirective() {
        return this.getDirective("uses");
    }

    protected void appendValuesToBuffer(StringBuffer sb, TreeMap table) {
        if (table == null) {
            return;
        }
        Object usesValue = null;
        if (table.containsKey("uses")) {
            usesValue = table.remove("uses");
        }
        Object friendsValue = null;
        if (table.containsKey("x-friends")) {
            friendsValue = table.remove("x-friends");
        }
        super.appendValuesToBuffer(sb, table);
        int newLineLimit = 3;
        if (friendsValue != null && usesValue != null) {
            newLineLimit = 1;
        }
        if (friendsValue != null) {
            table.put("x-friends", friendsValue);
            this.formatDirective("x-friends", sb, friendsValue, newLineLimit);
        }
        if (usesValue != null) {
            table.put("uses", usesValue);
            this.formatDirective("uses", sb, usesValue, newLineLimit);
        }
    }

    private void formatDirective(String directiveName, StringBuffer sb, Object usesValue, int newLineLimit) {
        StringTokenizer tokenizer = null;
        boolean newLine = false;
        if (usesValue instanceof String) {
            tokenizer = new StringTokenizer((String)usesValue, ",");
            if (tokenizer.countTokens() > newLineLimit) {
                newLine = true;
            }
        } else if (usesValue instanceof List) {
            List usesList = (List)usesValue;
            if (usesList.size() > newLineLimit) {
                newLine = true;
            }
        } else {
            Object foo = usesValue;
            foo.getClass();
            return;
        }
        String EOL = this.getHeader().getLineLimiter();
        sb.append(';');
        if (newLine) {
            sb.append(EOL).append("  ");
        }
        sb.append(directiveName);
        sb.append(":=\"");
        if (tokenizer != null) {
            while (tokenizer.hasMoreTokens()) {
                sb.append(tokenizer.nextToken());
                if (!tokenizer.hasMoreTokens()) continue;
                sb.append(',');
                if (!newLine) continue;
                sb.append(EOL).append("   ");
            }
        } else {
            List usesList = (List)usesValue;
            ListIterator iterator = usesList.listIterator();
            while (true) {
                sb.append(iterator.next());
                if (!iterator.hasNext()) break;
                sb.append(',');
                if (!newLine) continue;
                sb.append(EOL).append("   ");
            }
        }
        sb.append("\"");
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write());
    }

    public void reconnect(IBundleModel model, ExportPackageHeader header, String versionAttribute) {
        super.reconnect(model, header, versionAttribute);
        this.reconnectFriends();
    }

    private void reconnectFriends() {
        Iterator keys = this.fFriends.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String)keys.next();
            PackageFriend friend = (PackageFriend)this.fFriends.get(key);
            friend.reconnect(this);
        }
    }
}

