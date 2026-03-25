打开浏览器，搜「Git 下载」，官网链接https://git-scm.com/downloads

第一步：在 GitHub 上建一个 “空文件夹”（仓库）
打开 GitHub（登录你的账号），点页面右上角的「+」号，选「New repository」（新建仓库）；仓库名随便填
第二步：右键桌面空白处，选「Git Bash Here」输入
<div class="hoverable-kRHiX2" data-testid="code-block-copy" tabindex="0" aria-describedby="ubz4pgd" data-popupid="ubz4pgd"><span role="img" class="semi-icon semi-icon-default text-14"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="none" viewBox="0 0 24 24"><path fill="currentColor" fill-rule="evenodd" d="M21 3.5V17a2 2 0 0 1-2 2h-2v-2h2V3.5H9v2h5.857c1.184 0 2.143.895 2.143 2v13c0 1.105-.96 2-2.143 2H5.143C3.959 22.5 3 21.605 3 20.5v-13c0-1.105.96-2 2.143-2H7v-2a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2m-6.143 4H5.143v13h9.714z" clip-rule="evenodd"></path></svg></span></div><div class="hoverable-kRHiX2" tabindex="0" aria-describedby="e7d8ioy" data-popupid="e7d8ioy"><span role="img" class="semi-icon semi-icon-default text-14"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="none" viewBox="0 0 24 24"><path fill="currentColor" fill-rule="evenodd" d="M4 4a1 1 0 0 1 1 1v3a3 3 0 0 0 3 3h11.086l-5.293-5.293a1 1 0 0 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7a1 1 0 0 1-1.414-1.414L19.086 13H8a5 5 0 0 1-5-5V5a1 1 0 0 1 1-1" clip-rule="evenodd"></path></svg></span></div><div class="hoverable-kRHiX2" tabindex="0" aria-describedby="l69frh4" data-popupid="l69frh4"><span role="img" class="semi-icon semi-icon-default text-14"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="none" viewBox="0 0 24 24"><path fill="currentColor" fill-rule="evenodd" d="M4.797 16.856a8.28 8.28 0 0 0 6.27 2.87h.008A8.28 8.28 0 0 0 14.372 3.84a11.6 11.6 0 0 1-1.658 7.714 11.62 11.62 0 0 1-7.917 5.303M13.415 1.43a10.28 10.28 0 0 1-2.348 20.296 10.28 10.28 0 0 1-8.883-5.103c-.397-.74.155-1.605.912-1.609a9.617 9.617 0 0 0 9.011-12.258 1.093 1.093 0 0 1 1.308-1.326" clip-rule="evenodd"></path></svg></span></div><div class="hoverable-kRHiX2" data-testid="code-block-preview" tabindex="0" aria-describedby="cnaymuy" data-popupid="cnaymuy"><span role="img" class="semi-icon semi-icon-default text-14"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="none" viewBox="0 0 24 24"><path fill="currentColor" d="M22 3v7a1 1 0 1 1-2 0V4h-6a1 1 0 1 1 0-2h7a1 1 0 0 1 1 1M11.005 21a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-7a1 1 0 0 1 2.002 0v6h6.003a1 1 0 0 1 1 1"></path></svg></span></div></div></div></div><div class="content-y8qlFa code-content light-scrollbar-FFk5j5"><pre class="container-S2LAkl language-bash"><code class="language-bash"><span class="token function">git</span> config <span class="token parameter variable">--global</span> user.name <span class="token string">"你的GitHub用户名"</span>
<span class="token function">git</span> config <span class="token parameter variable">--global</span> user.email <span class="token string">"你绑定GitHub的邮箱"</span>
</code></pre></div><div class="mask-wrapper-ujeSdZ" style="opacity: 0;"><div class="mask-lrkkzM"></div></div></div>
第三步：创建仓库，回到 Git Bash 黑窗口，输下面的命令<div class="content-y8qlFa code-content light-scrollbar-FFk5j5"><pre class="container-S2LAkl language-bash"><code class="language-bash"><span class="token function">git</span> clone https://github.com/你的用户名/my-contribution.git
</code></pre></div>
按回车后，你的桌面会多出一个叫「my-contribution」的文件夹
第四步：先进入这个文件夹：在 Git Bash 里输（按回车）<div class="content-y8qlFa code-content light-scrollbar-FFk5j5"><pre class="container-S2LAkl language-bash"><code class="language-bash"><span class="token builtin class-name">cd</span> my-contribution
</code></pre></div>
复制下面这段代码（把第一行的「2020-01-01」改成你注册 GitHub 的日期），粘贴到 Git Bash 里，按回车：
查询注册时间进入https://api.github.com/users/{username}
运行方法
右键这个 fill_contributions.sh 文件 → 选「Git Bash Here」
在弹出的黑窗口里输入：
bash
运行
./fill_contributions.sh
按回车，脚本就会自动开始补贡献了
等待运行：黑窗口会一行行显示 “正在补 XXXX-XX-XX 的贡献”，跑完后会自动把这些 “记录” 推到 GitHub；
可能会弹个窗口让你输 GitHub 的用户名和密码（或验证码），输完就行。<img width="581" height="370" alt="QQ20260319-144805" src="https://github.com/user-attachments/assets/bc4aea96-f9d5-47e7-8197-d9a451ed3007" />
