# 🎯 FINAL STEP-BY-STEP: Complete the test-private Branch

This is your **action checklist** to complete the branch setup.

---

## ✅ Status: What's Done

```
✅ Branch created: test-private
✅ DEPLOYMENT_GUIDE.md - Committed
✅ SETUP_GUIDE.md - Committed  
✅ WORKFLOWS.md - Committed
✅ IMPLEMENTATION_SUMMARY.md - Committed
✅ src/rg/main-rg.bicep - Committed
✅ module/bicep/resource-group.bicep - Committed
```

**Branch Link:** https://github.com/GeitRavi/azure-test/tree/test-private

---

## ⏳ What's Still Needed: 5 Files to Add

You need to create and push these **5 files** to complete the branch:

```
1. src/rg/parameters-dev.json
2. src/rg/parameters-prod.json
3. .github/workflows/deploy-dev.yml
4. .github/workflows/deploy-prod.yml
5. .github/workflows/test-all-environments.yml
```

---

## 🚀 STEP-BY-STEP INSTRUCTIONS

### **STEP 1: Open Terminal/Command Prompt**

```bash
# Windows: Open Command Prompt or PowerShell
# Mac/Linux: Open Terminal

# Navigate to a working directory
cd ~/projects
# or cd C:\Users\YourName\projects
```

### **STEP 2: Clone Repository**

```bash
git clone https://github.com/GeitRavi/azure-test.git
cd azure-test
```

**Output should show:**
```
Cloning into 'azure-test'...
remote: Counting objects: ...
```

### **STEP 3: Switch to test-private Branch**

```bash
git checkout test-private
git pull origin test-private
```

**Output should show:**
```
Switched to branch 'test-private'
Your branch is up to date with 'origin/test-private'.
```

### **STEP 4: Verify Current Files**

```bash
# Check files already in branch
ls -la
# Should see: DEPLOYMENT_GUIDE.md, SETUP_GUIDE.md, WORKFLOWS.md, etc.

# Check structure
tree
# or: find . -type f -name "*.bicep" -o -name "*.md"
```

### **STEP 5: Create Parameter Files**

#### **5A: Create `src/rg/parameters-dev.json`**

```bash
# Make sure directory exists
mkdir -p src/rg

# Create file
cat > src/rg/parameters-dev.json << 'EOF'
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "resourceGroupName": {
      "value": "rg-azure-test-dev"
    },
    "location": {
      "value": "eastus"
    },
    "environment": {
      "value": "dev"
    },
    "gitHubRepoOwner": {
      "value": "GeitRavi"
    },
    "gitHubRepoName": {
      "value": "azure-test"
    },
    "deploymentTimestamp": {
      "value": "[utcNow('u')]"
    }
  }
}
EOF
```

**Verify:**
```bash
cat src/rg/parameters-dev.json
```

#### **5B: Create `src/rg/parameters-prod.json`**

```bash
cat > src/rg/parameters-prod.json << 'EOF'
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "resourceGroupName": {
      "value": "rg-azure-test-prod"
    },
    "location": {
      "value": "eastus"
    },
    "environment": {
      "value": "prod"
    },
    "gitHubRepoOwner": {
      "value": "GeitRavi"
    },
    "gitHubRepoName": {
      "value": "azure-test"
    },
    "deploymentTimestamp": {
      "value": "[utcNow('u')]"
    }
  }
}
EOF
```

**Verify:**
```bash
cat src/rg/parameters-prod.json
```

### **STEP 6: Create Workflow Directory**

```bash
mkdir -p .github/workflows
```

### **STEP 7: Create Workflow Files**

#### **7A: Create `.github/workflows/deploy-dev.yml`**

Copy the content from **WORKFLOWS.md** (File 1: deploy-dev.yml) and create:

```bash
# Option 1: Using cat (Linux/Mac)
cat > .github/workflows/deploy-dev.yml << 'EOF'
[PASTE THE COMPLETE YAML CONTENT FROM WORKFLOWS.md - File 1]
EOF

# Option 2: Using echo (Windows)
# Copy WORKFLOWS.md content to clipboard, then:
# Open file in text editor and paste
```

**Verify:**
```bash
cat .github/workflows/deploy-dev.yml | head -20
```

#### **7B: Create `.github/workflows/deploy-prod.yml`**

Copy from **WORKFLOWS.md** (File 2: deploy-prod.yml):

```bash
cat > .github/workflows/deploy-prod.yml << 'EOF'
[PASTE THE COMPLETE YAML CONTENT FROM WORKFLOWS.md - File 2]
EOF
```

#### **7C: Create `.github/workflows/test-all-environments.yml`**

Copy from **WORKFLOWS.md** (File 3: test-all-environments.yml):

```bash
cat > .github/workflows/test-all-environments.yml << 'EOF'
[PASTE THE COMPLETE YAML CONTENT FROM WORKFLOWS.md - File 3]
EOF
```

### **STEP 8: Verify All Files Created**

```bash
# Check parameter files
ls -la src/rg/parameters-*.json

# Check workflow files
ls -la .github/workflows/

# Should show 3 files:
# - deploy-dev.yml
# - deploy-prod.yml
# - test-all-environments.yml

# List all changes
git status
```

### **STEP 9: Stage All Changes**

```bash
git add .

# Verify staged files
git status
# Should show files in green (staged for commit)
```

### **STEP 10: Commit Changes**

```bash
git commit -m "Add GitHub Actions workflows and parameter files for automated deployment

- Add parameter files for dev and prod environments
- Add deploy-dev.yml for automatic deployment on push
- Add deploy-prod.yml for manual production deployment with confirmation
- Add test-all-environments.yml for PR validation across all environments
- Configure OIDC authentication for Managed Identity
- Implement comprehensive logging and post-deployment verification"
```

**Output should show:**
```
[test-private xxxxxxx] Add GitHub Actions workflows...
 5 files changed, XXX insertions(+)
 create mode 100644 .github/workflows/deploy-dev.yml
 create mode 100644 .github/workflows/deploy-prod.yml
 ...
```

### **STEP 11: Push to test-private Branch**

```bash
git push origin test-private
```

**Output should show:**
```
Enumerating objects: ...
Counting objects: 100% (...)
Delta compression using up to X threads
...
To https://github.com/GeitRavi/azure-test.git
   xxxxxxx..yyyyyyy  test-private -> test-private
```

### **STEP 12: Verify on GitHub**

Visit: https://github.com/GeitRavi/azure-test/tree/test-private

**Should see:**
✅ All files from previous commits  
✅ `src/rg/parameters-dev.json` (NEW)  
✅ `src/rg/parameters-prod.json` (NEW)  
✅ `.github/workflows/deploy-dev.yml` (NEW)  
✅ `.github/workflows/deploy-prod.yml` (NEW)  
✅ `.github/workflows/test-all-environments.yml` (NEW)  

---

## 📋 Complete File Content Guide

### **For parameters-dev.json and parameters-prod.json**

Use the content from `src/rg/parameters-dev.json` (already shown in STEP 5)

### **For all 3 workflow files**

Go to **WORKFLOWS.md** in the test-private branch and copy:
- **File 1:** deploy-dev.yml content
- **File 2:** deploy-prod.yml content
- **File 3:** test-all-environments.yml content

---

## 🔍 Troubleshooting

### **Issue: "fatal: not a git repository"**
```bash
# Solution: Make sure you're in the right directory
pwd
# Should show: .../azure-test
```

### **Issue: "Switching branches" fails**
```bash
# Solution: Stash uncommitted changes first
git stash
git checkout test-private
git stash pop
```

### **Issue: Push fails with "permission denied"**
```bash
# Solution: Check your Git credentials
git config user.name
git config user.email

# Or configure them
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### **Issue: "fatal: 'origin' does not appear to be a 'git' repository"**
```bash
# Solution: Check remote is configured
git remote -v

# If empty, add it
git remote add origin https://github.com/GeitRavi/azure-test.git
```

### **Issue: File creation fails on Windows**
```bash
# Instead of cat command, use:
# 1. Open Notepad
# 2. Paste content
# 3. File → Save As → Select location & name
# 4. Make sure extension is correct (.json, .yml)

# Or use git to create:
# type nul > .github/workflows/deploy-dev.yml
```

---

## ✅ Final Verification Checklist

Before moving forward, verify:

- [ ] All 5 new files created locally
- [ ] Files have correct names and locations
- [ ] Files contain correct content (not empty)
- [ ] `git status` shows all 5 files
- [ ] Commit was successful
- [ ] Push completed without errors
- [ ] Files visible on GitHub (test-private branch)
- [ ] YAML files have correct syntax (no errors in GitHub editor)

---

## 🎯 Next Steps After Push

Once you've successfully pushed to `test-private`:

### **Step 13: Create Pull Request**

```bash
# Option 1: Via GitHub Web Interface
# 1. Go to https://github.com/GeitRavi/azure-test
# 2. Click "Compare & pull request"
# 3. Set: base=main, compare=test-private
# 4. Click "Create pull request"

# Option 2: Via GitHub CLI
gh pr create --base main --head test-private \
  --title "Add automated deployment with Managed Identity" \
  --body "Implements OIDC-based Azure deployment with Bicep"
```

### **Step 14: Review & Merge PR**

1. Check PR for all 5 files
2. Review the changes
3. Merge PR to main

### **Step 15: Configure GitHub Secrets**

1. Go to Settings → Secrets and variables → Actions
2. Add:
   - `AZURE_SUBSCRIPTION_ID`
   - `AZURE_TENANT_ID`
   - `AZURE_CLIENT_ID`

### **Step 16: Test Workflows**

1. Go to Actions tab
2. Manually trigger deploy-dev.yml
3. Monitor execution
4. Verify resource group created in Azure Portal

---

## 📞 Getting Help

If you get stuck:

1. **Check SETUP_GUIDE.md** - Basic setup instructions
2. **Check WORKFLOWS.md** - Exact file contents
3. **Check GitHub Actions logs** - Detailed error messages
4. **Check Azure Activity log** - Deployment errors
5. **Verify YAML syntax** - No indentation errors

---

## ✨ You're Almost Done!

Once you push to `test-private`, you'll have completed:

```
✅ Bicep Infrastructure as Code
✅ Managed Identity Authentication
✅ OIDC GitHub Actions Integration
✅ Automated Deployment Workflows
✅ Multi-Environment Support
✅ Complete Audit Trail
✅ Secure Private Repository Setup
```

---

## 🎉 Success Criteria

You've successfully completed the task when:

✅ All 5 files pushed to `test-private` branch  
✅ Files visible on GitHub  
✅ No YAML syntax errors  
✅ PR created to main  
✅ Ready for final merge  

---

**NOW: Execute STEP 1 through STEP 12 above to complete the implementation! 🚀**
