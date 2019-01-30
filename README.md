---


---

<h1 id="dotfiles">Dotfiles</h1>
<p>My dotfiles are managed by <a href="https://thelocehiliosan.github.io/yadm/docs/overview">YADM</a> (Yet Another Dotfile Manager).<br>
YADM is similar as managing your dotfiles with a bare git repo, with a few bonuses:</p>
<ul>
<li>You can <a href="https://thelocehiliosan.github.io/yadm/docs/bootstrap">bootstrap</a> your dotfiles (i.e. install <a href="https://brew.sh/">Homebrew</a> on MacOS, python packages, etc. )</li>
<li>You can have <a href="https://thelocehiliosan.github.io/yadm/docs/alternates_">alternate file versions</a>, depending on your architecture,</li>
<li>You can encrypt sensitive data with a gpg key.</li>
</ul>
<h2 id="table-of-contents">Table of Contents</h2>
<ul>
<li><a href="#initial-setup">Initial setup</a></li>
<li><a href="#usage">Usage</a>
<ul>
<li><a href="#multiple-dotfiles">Mutiple dotfiles</a></li>
</ul>
</li>
<li><a href="#more-info">More info</a></li>
</ul>
<h2 id="initial-setup">Initial setup</h2>
<p>You can either:</p>
<ul>
<li>if you have YADM installed, clone the repo and bootstrap, using:</li>
</ul>
<pre class=" language-bash"><code class="prism  language-bash">yadm clone --bootstrap https://github.com/CamilleBC/dotfiles
</code></pre>
<ul>
<li>else juste fetch the YADM install script and run it with optionnal parameters <code>REPO_URL</code> and <code>YADM_RELEASE</code></li>
</ul>
<pre class=" language-bash"><code class="prism  language-bash">curl -fsSL <span class="token string">'https://github.com/TheLocehiliosan/yadm/raw/master/bootstrap'</span> <span class="token operator">|</span> <span class="token function">bash</span> <span class="token punctuation">[</span>-s -- REPO_URL <span class="token punctuation">[</span>YADM_RELEASE<span class="token punctuation">]</span><span class="token punctuation">]</span>
</code></pre>
<h4 id="if-the-home-directory-has-overlapping-files">If the $HOME directory has overlapping files</h4>
<p>YADM will stash the conflicting files on your machine. You can check those using <code>yadm stash show -p</code>, and either restore it using <code>yadm stash apply</code> or delete it all at once with <code>yadm stash clear</code>.</p>
<h2 id="usage">Usage</h2>
<p>You can manage your dotfiles like this:</p>
<pre class=" language-bash"><code class="prism  language-bash">yadm status
yadm add .config/nvim/init.vim
yadm commit -m <span class="token string">"add neovim config"</span>
yadm add .config/redshift.conf
yadm commit -m <span class="token string">"update redshift config"</span>
yadm push
</code></pre>
<p>Every time you modify a file that should be versioned, just add it using either the bash alias (<code>yadm add file</code>) or the ZSH abbreviation (<code>ya file</code>).<br>
Then just commit it to the repo (<code>yadm commit -m "message"</code> or <code>ycm "message</code>) and push.</p>
<h3 id="multiple-dotfiles">Multiple dotfiles</h3>
<p>If you wish to keep separate versions of the dotfiles, just use a <strong>master</strong> branch for the shared dotfiles, and create a <strong>branch</strong> (<code>yadm branch</code>) for your specific setup. This will require you to keep all the shared files in sync with your branches though.</p>
<p>If you update something that should be common to all machine, just add it to master, then checkout your branch and merge with master.</p>
<p>There you go! Easy, no?</p>
<h2 id="more-info">More info</h2>
<p>You can read:</p>
<ul>
<li>the <a href="https://thelocehiliosan.github.io/yadm/docs">doc</a>,</li>
<li>the <a href="https://thelocehiliosan.github.io/yadm/docs/faq">FAQ</a>,</li>
<li>the <a href="https://github.com/TheLocehiliosan/yadm/blob/master/yadm.md">YADM manual</a></li>
</ul>
<p>You can also check this cool dotfiles repos managed by YADM:</p>
<ul>
<li><a href="https://github.com/bketelsen/dotfiles/">bketesen</a></li>
<li>more repos <a href="https://thelocehiliosan.github.io/yadm/docs/examples">here</a></li>
</ul>
<p>If you want more details on bare git repo management, you can go to the <a href="https://news.ycombinator.com/item?id=11070797">Ycombinator thread</a> or this <a href="https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/">article</a> which details the process that is (partially) used by YADM if you need it.</p>

