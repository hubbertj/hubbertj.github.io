---
layout: page
title: Projects
extraTitle: My Passions
permalink: /projects/
---

Over the years I’ve built products across AI, healthcare, gaming, telecommunications, and identity — sometimes as a
<b>Founder · CEO · Lead Engineer</b>, and often as the person translating messy requirements into systems that ship.

### Highlights

- **15+ enterprise AI solutions** deployed with **~40% average efficiency gains**
- **Fortune 500 delivery**: MGM, Walmart, Optum
- **Scale + reliability**: 1M+ daily transactions, 99.9% uptime patterns
- **Modern stack**: AWS Bedrock, Python, Node.js, React, Kubernetes, Azure AI, GCP

## Featured Work

### bluefoxlab.ai — Lead Senior AI Engineer (Present)

**What I’m building**: end-to-end AI systems (LLM + workflow + UX) for enterprise teams.

- **Enterprise AI architecture** on AWS Bedrock (secure, observable, production-ready)
- **Conversational AI & agents** with Python/Node.js + React on LibreChat
- **Prompt engineering + tuning** for reliable outcomes and measurable ROI

<div class="home-hero-meta">
  <span class="pill">AWS Bedrock</span>
  <span class="pill">Python</span>
  <span class="pill">Node.js</span>
  <span class="pill">React</span>
  <span class="pill">LibreChat</span>
</div>

### Cognizant — Senior Software Engineer (Lead) (2020–2025)

**Focus**: enterprise platforms with AI-assisted workflows and security-first delivery.

- **MGM Resorts**: secure identity microservice + fraud detection (Okta, OAuth2/JWT)
- **Optum**: ML-enhanced claims validation & fraud signals across 20+ microservices
- **USAC Lifeline**: AI-informed eligibility + high-throughput microservice architecture

<div class="home-hero-meta">
  <span class="pill">Spring Boot</span>
  <span class="pill">TypeScript</span>
  <span class="pill">Kubernetes</span>
  <span class="pill">Azure AI</span>
  <span class="pill">GCP</span>
</div>

### Softvision (Consulting) — Senior Software Engineer (2017–2018)

- **Walmart Sam’s Club (“Ask Sam”)**: Azure NLP-powered assistant for store associates
- **Kohl’s**: AI-assisted planning tools for seasonal forecasting & inventory decisions

<div class="home-hero-meta">
  <span class="pill">Azure NLP</span>
  <span class="pill">Angular</span>
  <span class="pill">MongoDB</span>
  <span class="pill">OpenShift</span>
</div>

## Experience Snapshot

<details>
  <summary><strong>Show full timeline</strong></summary>
  <br />

  ### Scientific Gaming — Senior Software Engineer (Lead) (2018–2020)
  - ML signals for predictive maintenance + user behavior analysis
  - Elasticsearch/Kibana for anomaly detection and log analysis

  ### Evus Technologies — Full Stack Engineer (2017)
  - Led a 4-person team building a financial literacy platform (Node.js, Angular, AWS)

  ### Scientific Games — Software Engineer III (2015–2016)
  - Unity mobile gaming + player behavior analysis
  - SaaS platform with Django/Python, PHP Symfony, AWS

  ### amSTATZ — Front End Engineer (2014–2015)
  - Web + mobile apps (Backbone.js, Angular, Cordova/PhoneGap)
  - REST APIs with Java Spring MVC

  ### Konami Gaming Inc. — Software Engineer II (2012–2014)
  - Casino management systems (Java Swing, Oracle)
  - Hybrid mobile app (Backbone.js, PhoneGap)

  ### Time Warner Cable — NOC Engineer (2008–2011)
  - National network monitoring + Tier 1/2 troubleshooting

  ### US Navy — Electronic Technician (2001–2005)
  - Repair/calibration of electronic equipment; shipboard technical support
</details>

---

## GitHub Repos

<p class="repo-note">
  This list is loaded live from GitHub (sorted by last updated).
  <a href="https://github.com/hubbertj?tab=repositories" target="_blank" rel="noopener noreferrer">View on GitHub</a>
</p>

<div id="repo-buttons" class="repo-buttons">
  <span class="repo-loading">Loading repositories…</span>
</div>

<script>
  (function () {
    const container = document.getElementById("repo-buttons");
    if (!container) return;

    const username = "hubbertj";
    const apiUrl = `https://api.github.com/users/${username}/repos?per_page=100&sort=updated`;

    function escapeHtml(s) {
      return String(s)
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/\"/g, "&quot;")
        .replace(/'/g, "&#039;");
    }

    fetch(apiUrl, { headers: { "Accept": "application/vnd.github+json" } })
      .then((r) => {
        if (!r.ok) throw new Error(`GitHub API error: ${r.status}`);
        return r.json();
      })
      .then((repos) => {
        if (!Array.isArray(repos) || repos.length === 0) {
          container.innerHTML = "<span class=\"repo-error\">No repositories found.</span>";
          return;
        }

        // Sort: pinned not available via this endpoint; keep API's updated order.
        const html = repos
          .filter((repo) => repo && repo.html_url && repo.name)
          .map((repo) => {
            const name = escapeHtml(repo.name);
            const desc = repo.description ? escapeHtml(repo.description) : "";
            const lang = repo.language ? escapeHtml(repo.language) : "";
            const stars = typeof repo.stargazers_count === "number" ? repo.stargazers_count : 0;

            const meta = [lang, stars ? `★ ${stars}` : ""].filter(Boolean).join(" · ");

            return `
              <a class="repo-button" href="${repo.html_url}" target="_blank" rel="noopener noreferrer" title="${desc}">
                <span class="repo-button-name">${name}</span>
                ${meta ? `<span class="repo-button-meta">${meta}</span>` : ""}
              </a>
            `;
          })
          .join("");

        container.innerHTML = html;
      })
      .catch(() => {
        container.innerHTML =
          "<span class=\"repo-error\">Couldn’t load repos right now. Please try again later.</span>";
      });
  })();
</script>



